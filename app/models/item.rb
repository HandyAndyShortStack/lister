class Item < ActiveRecord::Base
  attr_accessible :name
  belongs_to :list
end
