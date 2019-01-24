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
      game_is_full(boxes_users_played_array)
    end
    
    def print_board
      puts "   1   2   3"
      puts "A   #{@a1} | #{@a2}  | #{@a3} " 
      puts "  ---|---|---"
      puts "B   #{@b1} | #{@b2}  | #{@b3} "
      puts "  ---|---|---"
      puts "C   #{@c1} | #{@c2}  | #{@c3} "
      puts
    end
    
    def play_turn
      boxes_users_played_array = []
      while true
        #user_choice_hash = {"a1" => @a1, "a2" => @a2, "a3" => @a3, "b1" => @b1, "b2" => @b2, "b3" => @b3, "c1" => @c1, "c2" => @c2, "c3" => @c3}
        #TO DO : une méthode qui :
        #1) demande au bon joueur ce qu'il souhaite faire
        #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
        puts "Which case do you want to play?"
        puts
        print "> "
        boxe_user_played = gets.chomp.downcase
        correct_boxes_array = ["a1", "a2", "a3", "b1", "b2", "b3", "c1", "c2", "c3"]
        if correct_boxes_array.include?(boxe_user_played)
          if boxes_users_played_array.include?(boxe_user_played)
            puts "Sorry. The box is ticked already. Try again"
          else
            boxes_users_played_array << boxe_user_played
            puts boxes_users_played_array
          end
          else
            puts 'Incorrect Answer. Choose between "a1", "a2", "a3", "b1", "b2", "b3", "c1", "c2" or "c3"'
            end
          end
          return boxes_users_played_array
        end
        

    def game_is_full(boxes_users_played_array)
      win_combos = [[@a1, @a2, @a3], [@a1, @b2, @c3], [@a1, @b1, @c1], [@b1, @b2, @b3], [@c1, @c2, @c3], [@c1, @b2, @a3], [@a2, @b2, @c2], [@a3, @b3, @c3]]
          #retourne une valeur spécifique à game, qui à son tour, demande à view, de lancer la finction "print_drawn_game" puis "start_again?"
        if boxes_users_played_array.size == 9
            puts " you drawn"
        elsif game_is_won(boxes_users_played_array)
          #retourne
        end
    end  


    # def victory?
    #   #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
      
    # 
    # end
end