=begin
Write your code for the 'Microwave' exercise in this file. Make the tests in
`microwave_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/microwave` directory.
=end

class Microwave
  def initialize(input)
    @input = input
  end

  def timer
    time = Time.new(0)

    while @input >= 100
      time += 60
      @input -= 100
    end
    
    time += @input

    time.strftime("%M:%S")
  end
end
