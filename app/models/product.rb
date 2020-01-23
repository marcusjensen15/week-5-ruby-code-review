class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy

  scope :usa, -> { where(country_of_origin: "United States") }

  # most reviewed scope is located below in the methods

  scope :mostrecent, -> { order(created_at: :desc).first(3) }



  before_save :capitalize
  #these validates are new
  validates :name, presence: true
  validates :country_of_origin, presence: true
  validates :cost, presence: true

#putting the two review fields in product as a test

# validates :rating, :inclusion => 1..5
# validates_length_of :content_body, minimum: 50, maximum: 250




  #this capitalize method is new
  def capitalize
    self.name = self.name.titleize()
    self.country_of_origin = self.country_of_origin.titleize()
  end

#below method is used on the entire class Product and will return the most reviewed product.


  def self.mostreviewed
    @oink = self.all
    productx = []
    @oink.each do |product|
      productx.push({:name => product.name, :rev_freq => product.reviews.length})
    end
    # beef = productx.sort_by {|obj| obj.rev_freq}
    # beef
    result = productx.sort_by { |hsh| hsh[:rev_freq] }
    result.last[:name]
  end

  #dont get rid of this end below
end
