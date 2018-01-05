class QuestionMarksPatternMatcher
  def initialize(string:)
    @string = string

    @number_array = []
    @question_marks_counter = 0

    @answer_found = false
  end

  def matches?
    string.each_char do |character|
      if character.to_i != 0
        queue_into_number_array(character)
      elsif character == "?" && number_array.length == 1
        self.question_marks_counter += 1
      end

      if question_marks_counter == 3 && number_array.length == 2
        return true if check_for_ten
      end
    end
    false # If we've checked eveything and arrive here, there's no such pattern in the string
  end

  private
  attr_reader :string
  attr_accessor :number_array, :question_marks_counter, :answer_found

  def queue_into_number_array(character)
    if number_array.length < 2
      number_array << character.to_i
    elsif number_array.length == 2
      number_array.shift
      number_array << character.to_i
    end
  end

  def check_for_ten
    total = number_array.reduce(:+)
    if total == 10
      return true
    else
      number_array = []
      question_marks_counter = 0
    end
  end
end

#"acc?7??sss?3rr1??????5"

