require 'pry'
require 'csv'


class Gossip
  attr_accessor :author, :content
  def initialize(author,content)
    @author = author
    @content = content
  end

  def save
    CSV.open("db/gossip.csv","a") do |csv|
      csv << [@author,@content]
    end
  end

  def delete_gossip
    file = CSV.read("db/gossip.csv")
    file.delete([@author,@content])
    CSV.open("db/gossip.csv","w") do |csv|
      file.each{|row| csv << row}
    end
  end

  def self.all
    file = CSV.read("db/gossip.csv")
    gossip_array = []
    file.each {|gossip| gossip_array << Gossip.new(gossip[0],gossip[1])}
    return gossip_array
  end

end


#binding.pry