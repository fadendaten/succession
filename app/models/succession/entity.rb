module Succession
  class Entity < ActiveRecord::Base
    belongs_to :parent, polymorphic: true

    attr_accessible :parent_id, :parent_type, :rank

    def up
      self.rank += 1
      self.save
    end


    def down
      self.rank -= 1
      self.save
    end
  end
end
