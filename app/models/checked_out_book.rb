class CheckedOutBook < ApplicationRecord
  belongs_to :user
  belongs_to :book_copy
end
