require "pry"

class ChangeMaker
  def initialize(number:, denominations:)
    @number = number
    @denominations = denominations.sort.reverse

    @result = 0
    @amount_remaining = number
  end

  def how_many_combinations
    until amount_remaining == 0 || amount_remaining < denominations.last
      denominations.each do |denomination|
        how_many_of_coin = amount_remaining / denomination unless denomination > amount_remaining
        amount_remaining %= how_many_of_coin
      end
    end

    possibilities += 1
    amount_remaining = number

    self.how_many_combinations
  end

  private
  attr_accessor :number, :denominations, :result, :amount_remaining
end
