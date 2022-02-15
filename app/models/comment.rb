# Comment model (similar to Article model)

class Comment < ApplicationRecord

  # make each comment belond to specific Article (set-up "Active Record" association)
  belongs_to :article

end
