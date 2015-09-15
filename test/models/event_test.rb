require 'test_helper'

class EventTest < ActiveSupport::TestCase
  def setup
    @event = events(:january)
  end

  test "has a valid fixture" do
    assert @event.valid?
  end

  should validate_presence_of(:occurs_at)

  # test "requires a date and time" do
  #   @event.occurs_at = nil
  #   refute @event.valid?

  #   @event.occurs_at = ""
  #   refute @event.valid?
  # end

  should validate_presence_of(:location)

  
  # test "requires a location" do
  #   @event.location = nil
  #   refute @event.valid?

  #   @event.location = ""
  #   refute @event.valid?
  # end

 should validate_uniqueness_of(:location).
  scoped_to(:occurs_at).
  with_message('already an event scheduled there at that time').
  case_insensitive
end
