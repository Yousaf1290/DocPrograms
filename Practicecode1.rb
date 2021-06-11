class Randomvaluesgenerator
  attr_accessor :size_of_array

  def initialize(size)
    @size_of_array=size
  end

  def find_occurence

    random_numbers = Array.new(self.size_of_array)
    for i in 0..random_numbers.size-1

      random_numbers[i] = rand 0..10

    end

    puts random_numbers
    puts "Occurencies"

    occurences = Hash.new


    while !(random_numbers.size == 0)

      occurences[random_numbers[0]] = random_numbers.count(random_numbers[0])
      random_numbers.delete(random_numbers[0])


    end

    puts occurences

  end

end

obj = Randomvaluesgenerator.new(12)
obj.find_occurence
