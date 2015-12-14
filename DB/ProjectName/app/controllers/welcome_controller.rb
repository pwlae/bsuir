class WelcomeController < ApplicationController
  def show
	end

  def new
    @welcome = Welcome.new
  end
end
