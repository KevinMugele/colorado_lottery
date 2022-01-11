# frozen_string_literal: true

class ColoradoLottery
  attr_reader :registered_contestants, :winners, :current_contestants

  def initialize
    @registered_contestants = {}
    @winners = []
    @current_contestants = {}
  end

  def interested_and_18?(contestant, game)
    contestant.game_interests.include?(game.name) && contestant.age >= 18
  end

  def can_register?(contestant, game)
    (interested_and_18?(contestant,
                        game) == true && contestant.state_of_residence == 'CO') || (interested_and_18?(contestant,
                                                                                                       game) == true && game.national_drawing? == true)
  end

  def register_contestant(contestant, game)
    if can_register?(contestant, game)
      if @registered_contestants[game.name].nil?
        @registered_contestants[game.name] = [contestant]
      else
        @registered_contestants[game.name] << contestant
      end
    end
  end

  def eligible_contestants(game)
    eligible_contestants = []
    @registered_contestants.each do |games, contestants|
      next unless games == game.name

      contestants.each do |contestant|
        eligible_contestants << contestant if contestant.spending_money >= game.cost
      end
    end
    eligible_contestants
  end

  def charge_contestants(game)
    eligible_contestants(game).each do |contestant|
      contestant.spend_money(game)
    end
  end
end
