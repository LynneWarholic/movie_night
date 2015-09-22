class Vote < ActiveRecord::Base

  belongs_to :event
  belongs_to :movie

  validates :name, :movie_id, :event_id, presence: true

end
