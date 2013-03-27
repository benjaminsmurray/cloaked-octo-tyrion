class WelcomePageController < ApplicationController
  def welcome
    puts request.url
    puts "welcome_page_controller(welcome)"
  end
  def index
    puts request.url
    puts "welcome_page_controller(index)"
  end

end
