require "succession/engine"
require "succession/url_helper"


module Succession
  def self.included(base)
    base.has_one :succession_entity,
                  class_name: "Succession::Entity",
                  as: :parent,
                  dependent: :destroy
    base.after_create :create_succession_entity
  end

  def rank
    Succession::Entity.where(parent_id: self.id,
                             parent_type: self.class.to_s).first.rank
  end

  def rank= rank
    enity = Succession::Entity.where(parent_id: self.id,
                             parent_type: self.class.to_s).first
    enity.rank = rank
    enity.save
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
    all_succession_entities.order(:rank).last
  end

  def highest_succession_rank
    return last_sueccession_entity.rank + 1 unless last_sueccession_entity.nil?
    return 0
  end

end
