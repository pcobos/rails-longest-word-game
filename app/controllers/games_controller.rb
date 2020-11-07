class GamesController < ApplicationController
  def new
    @letters = (("A".."Z").to_a * 2).sample(9)
  end

  def score
  end
end
