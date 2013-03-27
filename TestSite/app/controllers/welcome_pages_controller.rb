class WelcomePagesController < ApplicationController
  def welcome
    puts request.url
    puts "welcome_pages_controller(welcome)"
  end
  def index
    puts request.url
    puts "welcome_pages_controller(index)"
  end
  def n()
    @n2 = params[:name]
  end


end
