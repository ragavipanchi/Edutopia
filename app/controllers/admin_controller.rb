class AdminController < ApplicationController
  layout "admin"
  def index
    redirect_to "/admin"
  end
end
