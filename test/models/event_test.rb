require 'test_helper'

class EventTest < ActiveSupport::TestCase
  test "has a valid fixture" do
    @event = events(:january)
    assert @event.valid?
  end

  should have_many(:movies)

  should have_many(:votes)

  should validate_presence_of(:occurs_at)
  should validate_presence_of(:location)

 should validate_uniqueness_of(:location).
  scoped_to(:occurs_at).
  with_message('already an event scheduled there at that time').
  case_insensitive
end
