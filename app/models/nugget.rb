class Nugget < ActiveRecord::Base
  belongs_to :author_id
  belongs_to :category_id
end
