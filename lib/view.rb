class View
  def initialize()
    return true
  end

  def create_gossip()
    puts "Quel est le nom de l'auteur ?"
    print "=>"
    author = gets.chomp
    puts "Tape le contenu du gossip :"
    content = gets.chomp
    return {content: content, author: author}
  end

  def index_gossips(gossip_array)
    puts "Voici les gossips du moment :"
    gossip_array.each do |gossip|
      puts "Gossip de #{gossip.author} :"
      puts gossip.content
      puts "-" * 50
    end
  end

  def header_deleter_gossip(gossip_array)
    puts "Quel message veux tu supprimer ?"
    gossip_array.each.with_index {|gossip,i| puts "#{i+1} - #{gossip.content} (by #{gossip.author})"}
    puts "N - Ne rien supprimer"
    print "->"
  end

  def input_reasker()
    puts "Entre une valeur correcte :"
    print "->"
    input = gets.chomp
    return input
  end

  def delete_gossip(gossip_array)
    header_deleter_gossip(gossip_array)
    input = gets.chomp
    until (input.to_i >= 1 && input.to_i <= gossip_array.size) || input.upcase == "N"
      input = input_reasker()
    end
    input == "N" ? (return nil) : (return gossip_array[input.to_i - 1])
  end

end