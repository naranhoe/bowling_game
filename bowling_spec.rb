require 'rspec'
require './bowling'

describe 'Bowling game logic' do

  before do
    @game = Bowling.new
  end

  it 'Can roll gutter game' do
    20.times{ @game.roll(0) }
    expect(@game.score).to eq(0)
  end

  it 'Can roll all ones' do
    20.times{ @game.roll(1) }
    expect(@game.score).to eq(20)
  end

  it 'Can roll a spare' do
    @game.roll(5)
    @game.roll(5)
    @game.roll(3)
    17.times{ @game.roll(0) }
    expect(@game.score).to eq(16)
  end

  it 'Can roll a strike' do
    @game.roll(10)
    @game.roll(3)
    @game.roll(4)
    16.times{ @game.roll(0) }
    expect(@game.score).to eq(24)
  end

  it 'Can roll a perfect game' do
    12.times{ @game.roll(10) }
    expect(@game.score).to eq(300)
  end

end
