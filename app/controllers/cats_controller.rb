class CatsController < ApplicationController
  before_filter :authenticate_user!

  def index
  end

  def serve
    @incoming = true
    CatServer.perform_later current_user
    render :index
  end
end
