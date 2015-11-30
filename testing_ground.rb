

class BingoBoard
  def initialize(board = [])
    @bingo_board = board.empty? ? self.create_board : board
    @draws = 0
  end

#no duplicate values!
  def create_board
    b = (1..15).to_a.shuffle!
    i = (16..30).to_a.shuffle!
    n = (31..45).to_a.shuffle!
    g = (46..60).to_a.shuffle!
    o = (61..75).to_a.shuffle!
    new_board = Array.new(5) {[b.pop, i.pop, n.pop, g.pop, o.pop]}
    new_board[2][2] = " "
    return new_board
  end

  #Draws a new value, and then #check it
  def call
    bingo = ["B", "I", "N", "G", "O"]
    rand_num = rand(0..4)
    draw = bingo[rand_num] + ((rand_num*15) + rand(1..15)).to_s
    @draws += 1
    p draw
    check(draw)
  end

  #Checks board and crosses out X if match, then reprint board
  def check(string)
    case string[0]
    when "B"
      col = 0
    when "I"
      col = 1
    when "N"
      col = 2
    when "G"
      col = 3
    else
      col = 4
    end
    @bingo_board.each do |x|
      x[col] = 'X' if x[col].to_s == string[1..2]
    end
    self.board
  end

  #Prints the column of values
  def column(col)
    @bingo_board.each {|x| puts x[col]}
  end

  #Prints board
  def board
    puts "   B    I    N   G    O   "
    @bingo_board.each do |x|
      print "| "
      x.each {|a| print "#{a} | "}
      puts ""
      puts "---------------------------"
    end
  end

  #Check for victory conditions
  def victory?
    #Check columns & rows
    @bingo_board.each do |row|
      return true if row.none? {|cell| cell.is_a?(Integer)}
    end
    bingo_transpose = @bingo_board.transpose
    bingo_transpose.each do |row|
      return true if row.none? {|cell| cell.is_a?(Integer)}
    end
    #Check diagonals
    bingo_reverse = @bingo_board.reverse
    diag1 = []
    diag2 = []
    for i in 0..4
      diag1 << @bingo_board[i][i]
      diag2 << bingo_reverse[i][i]
    end
    return true if diag1.none? {|x| x.is_a?(Integer)} || diag2.none? {|x| x.is_a?(Integer)}
    false
  end

  #Draws until win
  def draw_until_win
    until victory?
      call
    end
    puts "You required #{@draws} draws to win!"
  end

end

new_game = BingoBoard.new
new_game.board
new_game.draw_until_win