require "pry"

class EggDrop
  attr_accessor :eggs, :floors

  def initialize
    @eggs = 100
    @floors = (1..100).to_a
  end

  def min_drops
    until self.floors.length == 1
      drop_egg
    end

    100 - self.eggs
  end

  def drop_egg
    mid_point_index = self.floors.length / 2
    broken_egg = [true, false].sample

    if broken_egg && floors.length > 2
      self.floors.slice!(0..mid_point_index)
      self.eggs -= 1
    elsif broken_egg && floors.length == 2
      self.floors.delete_at(mid_point_index)
      self.eggs -= 1
    elsif !broken_egg
      self.floors.slice!(mid_point_index..self.floors.length)
    end
  end
end

