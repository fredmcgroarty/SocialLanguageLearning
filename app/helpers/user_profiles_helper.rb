module UserProfilesHelper

	def age(user)
		today = Date.today
		"#{today.year - user.dob.year - (user.dob.month > today.month || user.dob.month == today.month && user.dob.day > today.day ? 1 : 0)}"
	end
end