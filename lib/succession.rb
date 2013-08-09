require "succession/engine"

module Succession

  def included(base)
    base.has_one :succession_entity, class_name: "Succession::Entity", dependend: :destroy
    base.after_create :create_succession_entity
  end

  def welcome
    puts "hello"
  end

  private

  def create_succession_entity
    Succession::Entity.create!(parent_id: self.id,
                               parent_type: self.class.to_s,
                               rank: highest_succession_rank)
  end

  def all_succession_entities
    Succession::Entity.where(:parent_type == self.class.to_s)
  end

  def last_sueccession_entity
    all_succession_entities.order(:rank).first
  end

  def highest_succession_rank
    last_sueccession_entity + 1
  end

end
