class TopicsController < ApplicationController

	def index
		@topics = Topic.all
	end

	def new
		@topic = Topic.new
	end

	def create
		topic = Topic.new topic_params

		%w(english french spanish).each do |lang|
			if params[:topic][lang] == '1'
				topic.languages << Language.find_by(name: lang.capitalize)
			end
		end

		if topic.save
		# if a.save
			# if a.english?
			# 	b = Language_topic.new do |u|
			# 		u.topic_id = a.id
			# 		u.language_id = 1
			# 	end
			# end
			# if a.french?
			# 	c = Language_topic.new do |u|
			# 		u.topic_id = a.id
			# 		u.language_id = 2
			# 	end
			# end
			# if a.spanish?
			# 	c = Language_topic.new do |u|
			# 		u.topic_id = a.id
			# 		u.language_id = 3
			# 	end
			# end
			redirect_to '/topics'
		else
			flash[:error] = "There was an error, please submit valid data"
			redirect_to '/topics/new'
		end
	end

	def destroy
		@topic = Topic.find params[:id]
		@topic.destroy
		flash[:notice] = "language removed from the database"
		redirect_to '/'
	end

	def edit
		@topic = Topic.find params[:id]
	end

	def update
		@topic = Topic.find params[:id]
		@topic.update topic_params
		flash[:notice] = "language updated successfully"
		redirect_to topics_path
	end

	def show
		@topic = Topic.find params[:id]
	end

	def topic_params
		params[:topic].permit(:name, :english, :french, :spanish)
	end

end
