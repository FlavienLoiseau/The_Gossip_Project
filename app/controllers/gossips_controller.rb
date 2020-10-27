class GossipsController < ApplicationController
  def new
  end

  def create
    @gossip = Gossip.new(title: params["gossip_title"], content: params["gossip_content"], user: User.find(1))

    if @gossip.save
      redirect_to static_pages_home_path
    else
      redirect_to new_gossip_path
    end
  end
end
