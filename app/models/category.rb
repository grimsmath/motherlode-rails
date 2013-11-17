class Category < ActiveRecord::Base
  has_many :nuggets
  include ActsAsTree

  acts_as_tree order: 'name'
end
