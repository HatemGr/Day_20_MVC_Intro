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

  def index_gossips(file)
    puts "Voici les gossips du moment :"
    file.each do |gossip|
      author = gossip[0]
      content = gossip[1]
      puts "Gossip de #{author} :"
      puts content
      puts "-" * 50
    end
  end
end