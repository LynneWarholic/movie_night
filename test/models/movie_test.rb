require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'has a vailid fixture' do
    @movie = movies(:up)
    assert @movie.valid?
  end

  should validate_presence_of(:title)
  should validate_presence_of(:url)

  # test 'requires a title' do
  #   @movie = Movie.new
  #   @movie.title = 'Big Labowski'
  #   assert @movie.valid?

  #   @movie.title = nil
  #   refute @movie.valid?

  #   @movie.title = ''
  #   refute @movie.valid?

  # end

  # test 'requires a url' do
  #   @movie = Movie.new
  #   @movie.url = "www.google.com"
  #   assert @movie.valid?

  #   @movie.url = nil
  #   refute @movie.valid?

  #   @movie.url = ''
  #   refute @movie.valid?

  # end

end
