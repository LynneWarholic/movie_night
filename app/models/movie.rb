class Movie < ActiveRecord::Base

  has_many :votes
  belongs_to :event

  validates :title, :url, presence: true

end
