require 'json'
require 'open-uri'

class GamesController < ApplicationController
  attr_reader :letters

  def new
    @letters = (("A".."Z").to_a * 2).sample(9)
  end

  def score
    # Grab the word sent by the user
    @word = params[:word].upcase
    @letters = params[:letters]
    # Check if the word was made using the letters contained in the grid
    @included = grid_includes_word?(@word, @letters)
    # Check if the word is english
    @english_word = english_word?(@word)
    raise
    # If so, we say congrats
    # Else we 
  end

  # private

  def grid_includes_word?(word, grid)
    word.chars.all? { |letter| word.count(letter) <= grid.count(letter) }
  end

  def english_word?(word)
    url = open("https://wagon-dictionary.herokuapp.com/#{word}")
    api_word = JSON.parse(url.read)
    api_word["found"]
  end
  
  # binding.pry
  
end
