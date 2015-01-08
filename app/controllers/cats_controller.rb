class CatsController < ApplicationController
  before_filter :authenticate_user!

  def index
  end

  def serve
    @incoming = true
    CatServer.perform_async current_user.id
    render :index
  end
end
