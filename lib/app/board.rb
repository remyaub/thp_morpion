require_relative "boardcase"

class Board
    #TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
    #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué
    #attr_accessor :hash_board_case, :count_turn
  
    def initialize
      #TO DO :
      #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
      #Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe
      #9.times do BoardCase.new
      print_board
      play_turn
    end

    def print_board

      puts
      puts "   1   2   3 "
      puts "A    |   |   " 
      puts "  ---|---|---"
      puts "B    |   |   "
      puts "  ---|---|---"
      puts "C    |   |   "
      puts
      
    end
  
    def play_turn
      #TO DO : une méthode qui :
      #1) demande au bon joueur ce qu'il souhaite faire
      #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
      puts "Which case do you want to play?"
      puts
      print "> "
      case_user_played = gets.chomp.downcase
      correct_boxes_array = ["a1", "a2", "a3", "b1", "b2", "b3", "c1", "c2", "c3"]
      unless correct_boxes_array.include?(case_user_played)
        puts "sorry"
        play_turn
      return case_user_played
      end
    end
  
    # def victory?
    #   #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
      
    # win_combos = [[@a1, @a2, @a3], [@a1, @b2, @c3], [@a1, @b1, @c1], [@b1, @b2, @b3], [@c1, @c2, @c3], [@c1, @b2, @a3], [@a2, @b2, @c2], [@a3, @b3, @c3]]
    # end
end