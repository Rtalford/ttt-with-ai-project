class Board

    def cells=(cell)
        @cells = cell
    end 
        
    def cells 
        @cells 
    end 

    def reset!
     @cells =  Array.new(9, " ")
    end 

   
    def initialize
        @cells =  Array.new(9, " ")
    end

    def display
        puts " #{cells[0]} | #{cells[1]} | #{cells[2]} "
        puts "-----------"
        puts " #{cells[3]} | #{cells[4]} | #{cells[5]} "
        puts "-----------"
        puts " #{cells[6]} | #{cells[7]} | #{cells[8]} "
    end

    def position(user_input)
         cells[user_input.to_i-1]
    end 

    def full? 
        !@cells.any? {|combo| combo == "" || combo == " "}
    end
   
    def turn_count
        @cells.count{|combo| combo == "X" || combo == "O"}
    end 

    def taken?(user_input)
        if @cells[user_input.to_i-1] == 'O' || @cells[user_input.to_i-1] == 'X'
            true
        else
            false
        end
    end 

    def valid_move? (user_input)
        !taken?(user_input) && user_input.to_i.between?(1,9)
    end 

    def update(user_input, player_token)
        cells[user_input.to_i-1] = player_token.token
    end 


end 