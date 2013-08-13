class Post < ActiveRecord::Base
  attr_accessible :content
  include Succession
end
