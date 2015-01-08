class CatsController < ApplicationController
  before_filter :authenticate_user!

  def index
  end

  def serve
    @incoming = true
    current_user.cat_me!
    render :index
  end
end
