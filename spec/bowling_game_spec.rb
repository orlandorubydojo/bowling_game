require './lib/bowling_game'

# test for a Gutter Game with a score of 0
# test for a Game of all ones with a score of 20
# test for a Game with a strike with a score of 24
# test for a Game with a spare with a score of 16
# test for a Pefect Game with a score of 300
describe BowlingGame do

  let(:game){BowlingGame.new}

  it 'scores 0 for a gutter game' do
    roll_many(20, 0)
    expect(game.score).to eq 0
  end

  it 'scores 20 for a game of all ones' do
    roll_many(20, 1)
    expect(game.score).to eq 20
  end

  it 'score of 24 with 1 strike' do
    roll_strike
    game.roll(4)
    game.roll(3)
    roll_many(16, 0)

    expect(game.score).to eq 24
  end

  it 'scores 16 for a game with a spare' do
    game.roll(5)
    game.roll(5)
    game.roll(3)
    roll_many(17, 0)

    expect(game.score).to eq 16
  end

  it 'scores 300 for a perfect game' do
    roll_many(12, 10)
    expect(game.score).to eq 300
  end

  def roll_many(number_of_rolls, pins)
    number_of_rolls.times do
      game.roll(pins)
    end
  end

  def roll_strike
    game.roll(10)
  end

end
