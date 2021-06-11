class Random_password_generator

  attr_accessor :size_of_password

  def initialize(size)
    @size_of_password=size
  end

  def generate_code_with_alphabets

    charsets = Array('A'..'Z') + Array('a'..'z')
    puts "Random generated password is : "
    puts Array.new(self.size_of_password) { charsets.sample }.join

    puts "Please type yes if you want to add numeric characters in your password else no:"
    a = gets.chomp

    if a=="yes"

      charsets = charsets + Array(0..9)

    end

    puts "Please type yes if you want to add special characters in your password else no:"
    a = gets.chomp

    if a=="yes"

      charsets = charsets + Array(('!'..'?'))

    end

    puts "You new generated password is :"
    puts Array.new(self.size_of_password) { charsets.sample }.join

  end

end
puts "Please entre the size of password :"
a = gets.chomp
obj = Random_password_generator.new(a.to_i)
obj.generate_code_with_alphabets
