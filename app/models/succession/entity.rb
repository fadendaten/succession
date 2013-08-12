module Succession
  class Entity < ActiveRecord::Base
    belongs_to :parent, polymorphic: true

    attr_accessible :parent_id, :parent_type, :rank
  end
end
