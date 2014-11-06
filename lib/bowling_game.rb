class BowlingGame
  def initialize
    @rolls = []
  end

  def roll(pins)
    @rolls << pins
  end

  def score
    score = 0
    frame = 0
    roll_index = 0

    while frame < 10
      if strike?(roll_index)
        score += score_strike(roll_index)
        roll_index += 1
      elsif spare?(roll_index)
        score += score_spare(roll_index)
        roll_index += 2
      else
        score += @rolls[roll_index] + @rolls[roll_index + 1]
        roll_index += 2
      end
      frame += 1
    end

    score
  end

private

  def strike?(roll_index)
    @rolls[roll_index] == 10
  end

  def score_strike(roll_index)
    10 + @rolls[roll_index + 1] + @rolls[roll_index + 2]
  end

  def spare?(roll_index)
    @rolls[roll_index] + @rolls[roll_index + 1] == 10
  end

  def score_spare(roll_index)
    10 + @rolls[roll_index + 2]
  end
end
