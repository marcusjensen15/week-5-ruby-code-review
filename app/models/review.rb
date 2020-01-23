class Review < ApplicationRecord
  belongs_to :product

  #working on most reviewed scope



  validates :author, presence: true
  validates :content_body, presence: true
  validates :rating, presence: true
  validates_length_of :content_body, minimum: 50, maximum: 250
  # validates_length_of :content_body, minimum: 50, maximum: 250

  #validates rating breaking when we try to edit to a number out of range. same happens when we edit with less than 50 chars or more than 250. will need to throw an exception in the if statement for updating a review ex: && review_params.review > 5 && same for char length of content body
  # validates :rating, :inclusion => 1..5, :on :create
  # validates :rating, :inclusion => 1..5, on :update,
  # validates :rating, :inclusion => 1..5, on :create
  validates :rating, :inclusion => 1..5

  # validates :content_body,
  # presence: true,
  # length: {maximum: 250},
  # on: :create,
  # allow_nil: false

end
