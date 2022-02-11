class Article < ApplicationRecord

# declares title value must be present (via `presence: true`)
  # default for string - value must be >= 1 char

  validates :title, presence: true

  # declares body value must be present
    # declares body value must be >= 10 chars (via `length: { minimum: 10 }`)

  validates :body, presence: true, length: { minimum: 10 }
  
end