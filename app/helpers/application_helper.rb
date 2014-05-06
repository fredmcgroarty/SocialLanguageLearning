module ApplicationHelper

	def flash_class(level)
    case level
        when :notice then "alert alert-info"
        when :success then "alert alert-success"
        when :error then "alert alert-error"
        when :alert then "alert alert-error"
    end
  end

  def get_topics
		@topics_a = []
		@topics_b = []
		@topics_c = []
		@topics_d = []
		@topics =  Topic.all
		@topics.each do |x|
			if x.id < 6
				@topics_a << x
			elsif x.id >= 6 && x.id < 11
				@topics_b << x
			elsif x.id >= 11 && x.id< 16
				@topics_c << x
			elsif x.id >= 16 && x.id < 21
				@topics_d << x
			end
		end
	end
end
