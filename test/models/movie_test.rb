require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'has a vailid fixture' do
    @movie = movies(:up)
    assert @movie.valid?
  end

  should belong_to(:event)
  should have_many(:votes)

  should validate_presence_of(:title)
  should validate_presence_of(:url)

  should validate_presence_of(:event_id)


end
