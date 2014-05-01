class Lesson < ActiveRecord::Base

  belongs_to :booking
  has_one :lesson_text



  def time_to_seconds
    booking.end_time.to_i - Time.now.to_i
  end 

end
