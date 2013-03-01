class HomeController < ApplicationController
  def index
    unless current_user
       redirect_to log_in_url
    end
  end
end
