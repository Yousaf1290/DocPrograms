# frozen_string_literal: true
class RandomPasswordGenerator
  attr_accessor :size_of_password

  def initialize(size)
    @size_of_password = size
  end

  def write_into_file(file_name,text)
    if File.exist?(file_name)
      count = 0
      afile = File.new(file_name, 'r')
      afile.each_line { |line|
        if line == text
          count += 1
        end
      }
      afile.close
      if count.positive?
        puts 'Password already exists in file'
      else
        File.write(file_name, text, File.size(file_name), mode: 'a')
      end
    else
      out_file = File.new(file_name, 'w')
      out_file.puts(text)
      out_file.close

    end
  end

  def generate_code_with_alphabets
    random_password = Array.new(@size_of_password)
    puts 'Please enter the number of numeric alphabets you want in you password:'
    a = gets.chomp
    count = 0
    for i in 0..a.to_i - 1
      random_password[count] = rand 0..9
      count += 1
    end

    puts 'Please enter the number of special alphabets you want in you password:'
    a = gets.chomp
    for i in 0..a.to_i - 1

      random_password[count] = Array(('!'..'?')).sample
      count += 1
    end

    for i in count..size_of_password - 1

      random_password[count] = Array(('A'..'Z')).sample
      count += 1
    end
    puts 'Password generated is:'
    random_password = random_password.shuffle
    puts random_password.join
    write_into_file('passwords.txt', random_password.join)
  end
end
puts 'Please entre the size of password :'
a = gets.chomp
obj = RandomPasswordGenerator.new(a.to_i)
obj.generate_code_with_alphabets
