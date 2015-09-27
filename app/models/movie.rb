class Movie < ActiveRecord::Base

  has_many :votes
  belongs_to :event

  validates :event, presence: true
  validates :url, presence: true

  validates :title, presence: true,
                    uniqueness: {
                      scope: :event_id,
                      case_sensitive: false,
                      message: 'already suggested for that event'
                    }

end
