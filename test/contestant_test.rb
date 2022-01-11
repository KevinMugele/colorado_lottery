# frozen_string_literal: true

require './lib/contestant'
require './lib/game'

RSpec.describe Contestant do
  it 'exists' do
    alexander = Contestant.new({ first_name: 'Alexander',
                                 last_name: 'Aigiades',
                                 age: 28,
                                 state_of_residence: 'CO',
                                 spending_money: 10 })

    expect(alexander).to be_a Contestant
  end

  it 'has a full name' do
    alexander = Contestant.new({ first_name: 'Alexander',
                                 last_name: 'Aigiades',
                                 age: 28,
                                 state_of_residence: 'CO',
                                 spending_money: 10 })

    expect(alexander.full_name).to eq('Alexander Aigiades')
  end

  it 'has an age' do
    alexander = Contestant.new({ first_name: 'Alexander',
                                 last_name: 'Aigiades',
                                 age: 28,
                                 state_of_residence: 'CO',
                                 spending_money: 10 })

    expect(alexander.age).to eq 28
  end

  it 'has a state of residence' do
    alexander = Contestant.new({ first_name: 'Alexander',
                                 last_name: 'Aigiades',
                                 age: 28,
                                 state_of_residence: 'CO',
                                 spending_money: 10 })

    expect(alexander.state_of_residence).to eq 'CO'
  end

  it 'has spending money?' do
    alexander = Contestant.new({ first_name: 'Alexander',
                                 last_name: 'Aigiades',
                                 age: 28,
                                 state_of_residence: 'CO',
                                 spending_money: 10 })

    expect(alexander.spending_money).to eq 10
  end

  it 'is out of state?' do
    alexander = Contestant.new({ first_name: 'Alexander',
                                 last_name: 'Aigiades',
                                 age: 28,
                                 state_of_residence: 'CO',
                                 spending_money: 10 })

    expect(alexander.out_of_state?).to eq false
  end

  it 'has game interests' do
    alexander = Contestant.new({ first_name: 'Alexander',
                                 last_name: 'Aigiades',
                                 age: 28,
                                 state_of_residence: 'CO',
                                 spending_money: 10 })

    expect(alexander.game_interests).to eq([])

    alexander.add_game_interest('Mega Millions')
    alexander.add_game_interest('Pick 4')

    expect(alexander.game_interests).to eq(['Mega Millions', 'Pick 4'])
  end
end
