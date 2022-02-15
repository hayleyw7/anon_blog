# Comment model (similar to Article model)

class Comment < ApplicationRecord

  # set-up "Active Record" association
  belongs_to :article

end
