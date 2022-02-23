class Article < ApplicationRecord

  # include Visible module
  include Visible

  # other side of Comment model assocation (models/comment.rb)
  has_many :comments

  # declare title & body values must be present
  validates :title, presence: true
  validates :body, presence: true
  
end