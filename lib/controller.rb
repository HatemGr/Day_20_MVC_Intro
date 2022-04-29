require 'gossip'
require 'view'

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
    file = Gossip.fetch_gossips
    @view.index_gossips(file)
  end

  def delete_gossip()
    return true
  end
end