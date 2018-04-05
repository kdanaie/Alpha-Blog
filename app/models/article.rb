class Article < ActiveRecord::Base
  validates :title, presence: true, length: {minimum: 3 , mximum: 50}
  validates :description, presence: true, length: {minimum: 10 , mximum: 250}
end
