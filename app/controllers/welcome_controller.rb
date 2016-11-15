class WelcomeController < ApplicationController
	  def index
		  if user_signed_in?
		    redirect_to today_problems_path
		  else
		    redirect_to home_path
		  end
		end
end

