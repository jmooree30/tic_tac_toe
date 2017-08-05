@entries = {1=>" ", 2=>" ", 3=>" ", 4=>" ", 5=>" ", 6=>" ", 7=>" ", 8=>" ", 9=>" "}

puts "###########################################"
puts "                tic-tac-toe"

puts "\t\t 1 | 2 | 3 "
puts "\t\t-----------"
puts "\t\t 4 | 5 | 6 "
puts "\t\t-----------"
puts "\t\t 7 | 8 | 9 "
puts" ###########################################"

class Players
  attr_accessor :name, :piece
  end

puts "Player one, what is your name?"
player1 = Players.new
player1.name = gets.chomp
player1.piece = "X"
puts "Hello #{player1.name}, you have been assigned #{player1.piece}."

puts "Player two, what is your name?"
player2 = Players.new
player2.name = gets.chomp  
player2.piece = "O"
puts "Hello #{player2.name}, you have been assigned #{player2.piece}."

  def grid
puts "\t\t #{@entries[1]} | #{@entries[2]} | #{@entries[3]} "
puts "\t\t-----------"
puts "\t\t #{@entries[4]} | #{@entries[5]} | #{@entries[6]} "
puts "\t\t-----------"
puts "\t\t #{@entries[7]} | #{@entries[8]} | #{@entries[9]} "
end 

def choice(grid)
  name = gets.chomp
  name2 = name.to_i
    @entries.each do |key,value|
      if name2 == key 
     @entries[key]= "X"
     end
   end
 end

def choice2(grid)
  name = gets.chomp
  name2 = name.to_i
    @entries.each do |key,value|
      if name2 == key 
     @entries[key]= "O"
     end
   end
 end

def turn1(player1)
  puts "#{player1.name} make your move"
  player1 = choice(grid)
end

def turn2(player2)
  puts "#{player2.name} make your move"
  player2 = choice2(grid)
end 

rows = [[1,2,3],[4,5,6],[7,8,9]]
cols = [[1,4,7],[2,5,8],[3,6,9]]
diag = [[1,5,9],[3,5,7]]

loop do
  turn1(player1) 
 if (rows + cols + diag).any?{ |line| line.all?{ |cell| @entries[cell] == "X"} }
  puts grid 
  puts "you win!"
  break
end
turn2(player2)
 if (rows + cols + diag).any?{ |line| line.all?{ |cell| @entries[cell] == "O"} }
  puts grid 
  puts "you win!"
  break
end
end
