class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) { Array.new }
    place_stones
  end

  def place_stones
    @cups = [ [:stone, :stone, :stone, :stone], [:stone, :stone, :stone, :stone],
    [:stone, :stone, :stone, :stone], [:stone, :stone, :stone, :stone],
    [:stone, :stone, :stone, :stone], [:stone, :stone, :stone, :stone],
    [], [:stone, :stone, :stone, :stone],
    [:stone, :stone, :stone, :stone], [:stone, :stone, :stone, :stone],
    [:stone, :stone, :stone, :stone], [:stone, :stone, :stone, :stone],
    [:stone, :stone, :stone, :stone], []]
    # helper method to #initialize every non-store cup with four stones each
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" if start_pos < 0 || start_pos > 12
    raise "Invalid starting cup" if @cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)
    # pos = @cups[start_pos].count
    # @cups[start_pos] = []
    # n = 0
    # (start_pos+1..start_pos+pos).each do |i|
    #   @cups[i] << :stone
    #   n = i
    # end
    # next_turn(n)
    stones = @cups[start_pos]
    @cups[start_pos] = []

    cup_idx = start_pos
    until stones.empty?
      cup_idx += 1
      cup_idx = 0 if cup_idx > 13
      # places stones in the correct current player's cups
      if cup_idx == 6
        @cups[6] << stones.pop if current_player_name == @name1
      elsif cup_idx == 13
        @cups[13] << stones.pop if current_player_name == @name2
      else
        @cups[cup_idx] << stones.pop
      end
    end

    render
    next_turn(cup_idx)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
    if ending_cup_idx == 6 || ending_cup_idx == 13
        :prompt
    elsif @cups[ending_cup_idx].count == 1
        :switch
    else
        ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    (0...6).all? {|a| @cups[a].empty?} || (7...13).all? {|a| @cups[a].empty?}
  end

  def winner
    if @cups[6].count == @cups[13].count
      return :draw
    elsif (7...13).all? {|a| @cups[a].empty?}
      @name2
    else
      @name1
    end
  end
end

# class My_Exception < StandardError
#   puts
# end
