class PagesController < ApplicationController
  skip_before_action :verify_authenticity_token
  def batman
  end

  def superman
  end

  def batman_vs_superman
  end

  def user_vote_batman
  	VoterBatman.new(name: params[:name], email: params[:email]).save
  	redirect_to pages_batman_vs_superman_path, notice_bat:"El usuario ha votado por Batman"	
  end

   def user_vote_superman
  	VoterSuperman.new(name: params[:name], email: params[:email]).save
  	redirect_to pages_batman_vs_superman_path, notice_sup:"El usuario ha votado por Superman"	
  end

end
