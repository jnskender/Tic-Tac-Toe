
class Game

    def initialize(player_one, player_two)
        @player_one = player_one
        @player_two = player_two
        @board = ['(1)', '(2)', '(3)', '(4)', '(5)', '(6)', '(7)', '(8)', '(9)']
    end

    def display_board
        puts "#{@board[0]}|#{@board[1]}|#{@board[2]}"
        puts '---+---+---'
        puts "#{@board[3]}|#{@board[4]}|#{@board[5]}"
        puts '---+---+---'
        puts "#{@board[6]}|#{@board[7]}|#{@board[8]}"
    end

    def place_piece(cell, piece)
        @board[cell - 1] = piece
    end

    def validate_cell(cell)
        if  cell < 1 || cell > 9
            puts 'Invalid Cell! Cell must be a number 1-9'
            return false
        elsif @board[cell - 1] == ' X ' || @board[cell - 1] == ' O '
            puts 'Cell already played!'
            return false
        end
            true
    end

    def is_winner?
        row_one      = @board[0..2]
        row_two      = @board[3..5]
        row_three    = @board[6..8]
        column_one   = @board[0], @board[3], @board[6]
        column_two   = @board[1], @board[4], @board[7]
        column_three = @board[2], @board[5], @board[8]
        diagonal_one = @board[0], @board[4], @board[8]
        diagonal_two = @board[2], @board[4], @board[6]
        possible_winners = [row_one, row_two, row_three, column_one,
                          column_two, column_three, diagonal_one, diagonal_two]

        puts "column 1 : " + column_one.to_s

        possible_winners.each do |e|
            if e.all? { |x| x.to_s == ' X ' }
                puts "#{@player_one} Wins!"
                return true
            elsif e.all? { |x| x == ' O ' }
                puts "#{@player_two} Wins!"
                return true
            else
                return false
            end

        end
    end

    def play
        turn_count = 0
        begin
            if turn_count.even?
                piece = ' X '
                player = @player_one
            else
                piece = ' O '
                player = @player_two
            end

            display_board

            begin
                puts "#{player}, please enter cell where you would like to place your piece"
                cell = gets.chomp
            end until validate_cell(cell.to_i)

            place_piece(cell.to_i, piece)
            display_board
            turn_count += 1
        end until is_winner?
    end
end
