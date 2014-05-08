class Topic < ActiveRecord::Base
	has_and_belongs_to_many :languages
	has_many :bookings
	has_many :user_reviews

	def completed_users
		@completed_users = user_reviews.where(completed: true).map(&:for_user)
	end

	def incompleted_users
		@users = User.all
		@completed_users = user_reviews.where(completed: true).map(&:for_user)
		@incompleted_users = @users - @completed_users
	end

	def completed_users_first
		completed_users[0..3]
	end

	def completed_users_second
		completed_users[4..7]
	end

	def completed_users_third
		completed_users[8..11]
	end

	def completed_users_fourth
		completed_users[12..15]
	end

	def incompleted_users_first
		incompleted_users[0..3]
	end

	def incompleted_users_second
		incompleted_users[4..7]
	end

	def incompleted_users_third
		incompleted_users[8..11]
	end

	def incompleted_users_fourth
		incompleted_users[12..15]
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
