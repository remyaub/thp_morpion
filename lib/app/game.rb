require_relative "player"
require_relative "board"

class Game
    #TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.
    attr_accessor :current_player, :status 

      def initialize
      #TO DO : créé 2 joueurs, créé un board, met le status à "on going", défini un current_player
        puts "C'est quoi ton blaze, player 1 ?"
        print "> "
        player_1 = Player.new(gets.chomp, "X")
        puts "C'est quoi ton blaze, player 2 ?"
        print "> "
        player_2 = Player.new(gets.chomp, "O")
        array = []
        array << player_1
        array << player_2
        Board.new
      end

      

    # end
  
    # def turn
    #   #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
    # end
  
    # def new_round
    #   # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
    # end
  
    # def game_end
    #   # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
    # end

    # def perform
    #   player_1 = player_1_blaze
    #   player_2 = player_2_blaze
      
    # end
  
end