# frozen_string_literal: true

require './lib/contestant'
require './lib/game'

RSpec.describe Game do
  it 'exists' do
    pick_4 = Game.new('Pick 4', 2)
    mega_millions = Game.new('Mega Millions', 5, true)

    expect(pick_4).to be_a Game
  end

  it 'has a name ' do
    pick_4 = Game.new('Pick 4', 2)
    mega_millions = Game.new('Mega Millions', 5, true)

    expect(pick_4.name).to eq 'Pick 4'
  end

  it 'has a cost' do
    pick_4 = Game.new('Pick 4', 2)
    mega_millions = Game.new('Mega Millions', 5, true)

    expect(pick_4.cost).to eq 2
  end

  it 'is a national drawing?' do
    pick_4 = Game.new('Pick 4', 2)
    mega_millions = Game.new('Mega Millions', 5, true)

    expect(pick_4.national_drawing?).to eq false
  end
end
