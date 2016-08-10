require 'rspec'
require './bowling'

describe 'Bowling game logic' do

  it 'Can make a new game' do
    game = Bowling.new
  end

  it 'Can roll gutter game' do
    game = Bowling.new
    20.times{ game.roll(0) }
    expect(game.score).to eq(0)
  end

end
