require "pry"

class ReverseString
  def initialize(string:)
    @string = string

    @reverse_array = []
    @reverse_string = ""
    @punctuation_hash = {}
  end

  def go
    create_reverse_array_and_store_punctuation_indices
    reinsert_punctuation
    remove_blank_elements

    assemble_reverse_string
  end

  private
  attr_reader :string, :reverse_array, :reverse_string, :punctuation_hash

  def create_reverse_array_and_store_punctuation_indices
    new_string_array = string.split(/\s|(\W)/)
    number_of_values = new_string_array.length
    current_index = number_of_values - 1

    number_of_values.times do
      if new_string_array[current_index].match(/\W/).nil?
        reverse_array << new_string_array[current_index]
      else
        punctuation_hash[new_string_array[current_index]] = current_index
      end
      current_index -= 1
    end
  end

  def reinsert_punctuation
    punctuation_hash.each do |punctuation_mark, index|
      reverse_array.insert(index, punctuation_mark)
    end
  end

  def remove_blank_elements
    reverse_array.reject! { |element| element.nil? || element.empty? }
  end

  def assemble_reverse_string
    reverse_array.each_with_index do |element, index|
      reverse_string.rstrip! if element.match(/\W/).is_a?(MatchData)

      reverse_string << element
      reverse_string << " " unless element == reverse_array.last
    end
    reverse_string
  end
end