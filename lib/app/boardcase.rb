class BoardCase
    #TO DO : la classe a 2 attr_accessor, sa valeur en string (X, O, ou vide), ainsi que son identifiant de case
    attr_accessor :valeur_string, :identifiant
  
    
    def initialize(valeur_string, identifiant)
      #TO DO : doit régler sa valeur, ainsi que son numéro de case
      @valeur_string = valeur_string
      @identifiant = identifiant
    end
end