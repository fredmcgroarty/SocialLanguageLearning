class LanguagesController < ApplicationController

	def index
		@profiles = UserProfile.all
		@languages = Language.all
	end

	def new
		@language = Language.new
	end

	def create
		a = Language.new language_params
		
		if a.save
			redirect_to '/languages'
		else
			flash[:error] = "There was an error, please submit valid data"
			redirect_to '/languages/new'
		end
	end

	def destroy
		assign_language
		@language.destroy
		flash[:notice] = "language removed from the database"
		redirect_to '/admin'
	end

	def edit
		assign_language
	end

	def update
		assign_language
		@language.update language_params
		flash[:notice] = "language updated successfully"
		redirect_to languages_path
	end

	def show
		assign_language
		@topics = Topic.all
	end

	def assign_language
		@language = Language.find params[:id]
	end

	def language_params
		params[:language].permit(:name)
	end

end
