# Class random value generator
class RandomValuesGenerator
  attr_accessor :size_of_array

  def initialize(size)
    @size_of_array = size
  end

  def find_occurence
    random_numbers = Array.new(size_of_array)

    (0..random_numbers.size - 1).each { |i| random_numbers[i] = rand 0..10 }

    puts random_numbers
    puts 'Occurencies'

    occurences = {}

    until random_numbers.size.zero?
      occurences[random_numbers[0]] = random_numbers.count(random_numbers[0])
      random_numbers.delete(random_numbers[0])
    end

    puts occurences
  end
end

obj = RandomValuesGenerator.new(12)

obj.find_occurence
