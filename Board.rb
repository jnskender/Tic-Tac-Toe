class Board

  def initialize
    @row_one = ["(1)","(2)","(3)"]
    @row_two = ["(4)","(5)","(6)"]
    @row_three = ["(7)","(8)","(9)"]
  end

  def display_board
    puts "#{@row_one[0]}|#{@row_one[1]}|#{@row_one[2]}"
    puts "___________"
    puts "#{@row_two[0]}|#{@row_two[1]}|#{@row_two[2]}"
    puts "___________"
    puts "#{@row_two[0]}|#{@row_two[1]}|#{@row_two[2]}"
  end

end
