
class Router
  def initialize()
    @controller = Controller.new()
  end

  def perform
    puts "BIENVENUE DANS THE GOSSIP PROJECT"
      puts "Que souhaites-tu faire ?"
      puts " 1 - Créer un gossip"
      puts " 2 - Voir les gossip"
      puts " 3 - Supprimer un gossip"
      puts " 4 - Quitter l'appli"
      print "->"
      input = gets.chomp
      loop do
        case input
          when "1"
            @controller.create_gossip
            self.perform
            break
          when "2"
            @controller.index_gossips
            self.perform
            break
          when "3"
            @controller.delete_gossip
            self.perform
            break
          when "4"
            puts "À bientôt !"
            break
          else
            puts "Saisie incorrecte, tape 1, 2 ou 3"
            print "->"
            input = gets.chomp
            next
          end
      end
  end

end