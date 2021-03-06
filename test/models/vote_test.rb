require 'test_helper'

class VoteTest < ActiveSupport::TestCase
  def setup
    @vote = votes(:voter1)
  end

  test "has a valid fixture" do
    assert @vote.valid?
  end

  should belong_to(:event)
  should belong_to(:movie)

  should validate_presence_of(:name)

  should validate_presence_of(:movie_id)
  should validate_presence_of(:event_id)

end
