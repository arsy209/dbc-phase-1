class Board
		attr_accessor :board 

	
  def initialize(board_size)
    @board_size = board_size
    @pawns = ["  W.pawn  ", "  B.pawn "]
    @kings = ["  W.king  ", "  B.king "]
    @queens = ["  W.queen  ", "  B.queen "]
    @bishops = ["  W.bishop  ", "  B.bishop  "]
    @knights = ["  W.knight  ", "  B.knight  "]
    @rooks = ["  W.rook  ", "  B.rook  "]
    display_board
  end

  def display_board
    @chess_piece = Array.new(@board_size) { Array.new(@board_size) }
    display_pawns
    display_others(@King, [0,4], [7,4])
    display_others(@Queen, [0,3], [7,3])
    display_others(@Bishop, [0,2], [7,2])
    display_others(@Bishop, [0,5], [7,5])
    display_others(@Knight, [0,1], [7,1])
    display_others(@Knight, [0,6], [7,6])
    display_others(@Rook, [0,0], [7,0])
    display_others(@Rook, [0,7], [7,7])
  end

  def display_others(chess_piece icon, black_pos, white_pos)
    @chess_piece.each_with_index do |each_row, each_row_index|
      each_row.each_with_index do |chess_piece, column_index|
        if each_row_index == black_pos[0] && column_index == black_pos[1]
          @chess_piece[each_row_index][column_index] = chess_piecenew(black_pos, icon[0], :Black, self)
        elsif each_row_index == white_pos[0] && column_index == white_pos[1]
          @chess_piece[each_row_index][column_index] = chess_piecenew(white_pos, icon[1], :White, self)
        end
      end
    end
  end

  def display_pawns
    @chess_piece.each_with_index do |each_row, each_row_index|
      each_row.each_with_index do |chess_piece, column_index|
        if each_row_index == 1
          @chess_piece[each_row_index][column_index] = Pawn.new([each_row_index, column_index], @pawns[0], :Black, self)
        elsif each_row_index == 6
          @chess_piece[each_row_index][column_index] = Pawn.new([each_row_index, column_index], @pawns[1], :White, self)
        end
      end
    end
  end
   def condition?(from, to, colors_turn, chess_piece
    if chess_piece.nil?
      raise MoveError.new("Your intial square is not occupied")
    elsif chess_piececolor != colors_turn
      raise MoveError.new("Its not that colors turn to move")
    elsif off_board?(to) || same_team_square?(from, to)
      raise MoveError.new("The square you are moving to is not legal")
    elsif !chess_piecemoves.include?([to[0],to[1]])
      raise MoveError.new("That is not a valid move for the chess_piece")
    elsif chess_piecemove_will_leave_in_check?(from, to, colors_turn)
      raise MoveError.new("THAT MOVE WILL LEAVE YOU IN CHECK")
    end
  end
end

disp = Board.new(board_size: 64)

p disp.display_board