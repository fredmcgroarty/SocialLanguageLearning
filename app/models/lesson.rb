class Lesson < ActiveRecord::Base

  belongs_to :booking
  has_one :lesson_text

  delegate  :student_id,
  					:user_id,
  					:lang1,
  					:lang2,
            to: :booking, allow_nil: true


  def time_to_seconds
    booking.end_time.to_i - Time.now.to_i
  end 

end
