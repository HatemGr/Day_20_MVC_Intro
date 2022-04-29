require 'gossip'

class Controller
  def initialize()
    @view = View.new()
  end

  def create_gossip()
    params = @view.create_gossip
    new_gossip = Gossip.new(params[:author],params[:content])
    new_gossip.save
  end

  def index_gossips()
    gossip_array = Gossip.all
    @view.index_gossips(gossip_array)
  end

  def delete_gossip()
    gossip_array = Gossip.all
    gossip_to_delete = @view.delete_gossip(gossip_array)
    gossip_to_delete.nil? ? (puts "Suppression annulée") : gossip_to_delete.delete_gossip
  end
end