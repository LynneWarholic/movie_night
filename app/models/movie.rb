class Movie < ActiveRecord::Base

  has_many :votes
  belongs_to :event

  validates :title, :url, :event_id, presence: true

end
