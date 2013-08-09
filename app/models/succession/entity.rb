module Succession
  class Entity < ActiveRecord::Base
    attr_accessible :parent_id, :parent_type, :rank
    belongs_to :parent, polymorphic: true
  end
end
