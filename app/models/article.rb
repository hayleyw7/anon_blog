class Article < ApplicationRecord

  # other side of Comment model assocation (models/comment.rb)

  has_many :comments

  # declare title & body values must be present
  validates :title, presence: true
  validates :body, presence: true

  # statuses
  VALID_STATUSES = ['public', 'private', 'archived']

  validates :status, inclusion: { in: VALID_STATUSES }

  def archived?
    status == 'archived'
  end
  
end