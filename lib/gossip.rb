require 'pry'
require 'csv'

class Gossip
  @@gossip_list = []
  def initialize(author,content)
    @content = content
    @author = author
    @@gossip_list << self
  end

  def save
    CSV.open("db/gossip.csv","a") do |csv|
      csv << [@author,@content]
    end
  end

  def self.fetch_gossips
    file = CSV.read("db/gossip.csv")
    return file
  end

end


#binding.pry