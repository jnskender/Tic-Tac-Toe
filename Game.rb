class Game

  @row_one = ["(1)","(2)","(3)"]
  @row_two = ["(4)","(5)","(6)"]
  @row_three = ["(7)","(8)","(9)"]

  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
  end

  def place_piece(cell,piece)

    valid_placement = false

    case cell
    when cell == "X" || cell == "O"
      "Piece already placed here!"
    when cell < 3
      @row_one[cell - 1] = piece
      valid_placement = true
    when cell > 3 && cell < 7
      @row_two[cell - 1] = piece
      valid_placement = true
    when cell > 7
      @row_three[cell - 1] = piece
      valid_placement = true
    else
      "Invalid Cell Number"
    end


  end

end
