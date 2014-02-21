module Succession
  class Entity < ActiveRecord::Base
    belongs_to :parent, polymorphic: true
    attr_accessible :parent_id, :parent_type, :rank
    
    # swap rank of self with successor entity if existent.
    def up
      update_relative(:+)
    end

    # swap rank of self with ancestor entity if existent.
    def down
      update_relative(:-)
    end
    
    private
    
    # either increment or decrement rank of current entity
    # depending on provided input argument 'op'.
    # argument op is either equal :+ or :-
    # useful in order to just have one relative rank update method
    def update_relative op
      sign = 0.send(op, 1)
      relative = relative op
        
      unless relative.blank?
        self.rank += 1*sign
        self.save
        relative.rank -= 1*sign
        relative.save
      end
    end
    
    def relative(op)
      type_entities = self.class.ordered_rank_of parent_type
      relative_rank = self.rank.send(op, 1)
      type_entities.where(:rank => relative_rank).first
    end
    
    # get all entities of given type provided as string
    # this method is a useful for swaping all entities
    def self.ordered_rank_of type
      type_entities = Succession::Entity.where(:parent_type => type)
      type_entities.order('rank DESC')
    end
    
  end
end
