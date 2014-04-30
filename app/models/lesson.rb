class Lesson < ActiveRecord::Base

  belongs_to :booking
  has_one :lesson_text

end
