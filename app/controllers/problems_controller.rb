class ProblemsController < ApplicationController
	before_action :authenticate_user!

	def index
		@problems = Problem.all
	end

	def new	
	end

	def create
		@problem = Problem.new(problem_params)
		@problem.save
  		redirect_to @problem
	end

	def show
		@problem = Problem.all
	end
	def edit
	end

	def update
	end

	def today
	end

	def step1
		@problem = Problem.new
		@problems = Problem.all
	end

	def step2
	end
	def step3
	end

	def calender
	end
	
	def aboutus
	end
	def settings
	end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end

  def problem_params
    params.require(:problem).permit(:text)
  end  
end
