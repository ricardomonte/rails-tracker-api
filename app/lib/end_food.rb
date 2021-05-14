class EndFood
  def initialize(amount, totalk, start, tperday)
    @amount = amount
    @totalk = totalk
    @start = start
    @tperday = tperday
  end

  def calculate
    food = (@totalk * 1000) / (@amount * @tperday)
    starting = @start.to_datetime
    starting + food.days
  end
end
