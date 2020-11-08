class GamesController < ApplicationController
  attr_reader :letters

  def new
    @letters = (("A".."Z").to_a * 2).sample(9)
  end

  def score
    # Grab the word sent by the user
    @word = params[:word]
    # Check if the word was made using the letters contained in the grid
    # Check if the word is english
    # If so, we say congrats
    # Else we 
  end

  private

  def english_word?(word)
    url = "https://wagon-dictionary.herokuapp.com/#{word}"
  end
end
