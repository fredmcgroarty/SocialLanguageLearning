class Topic < ActiveRecord::Base
	has_and_belongs_to_many :languages
	has_many :bookings
	has_many :user_reviews

	def completed_users
		user_reviews.where(completed: true).map(&:for_user)
		
		# @reviews = UserReview.all
		# @topic = Topic.find (self.id)
		# @completed = 0
		# @users_completed = []
		# @reviews.each do |x|
		# 	if @topic.id == x.topic_id && x.completed == true
		# 		@completed += 1
		# 		a = x.for_user_id
		# 		@users_completed << User.find(a)
		# 	end
		# end
		# @users_completed
		# @completed
	end

	def get_topics
		@topics_a, @topics_b, @topics_c, @topics_d = []
		@topics =  Topic.all
		@topics.each do |x|
			if x.id < 6
				@topics_a << x
			elsif x.id < 11 && x.id >= 6
				@topics_b << x
			elsif x.id < 16 && x.id >= 11
				@topics_c << x
			elsif x.id < 21 && x.id >= 16
				@topics_d << x
			end
		end
	end

end
