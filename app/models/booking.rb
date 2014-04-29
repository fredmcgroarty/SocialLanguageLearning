require_relative './concerns/bookable'

class Booking < ActiveRecord::Base
  include Bookable
  belongs_to :student, class_name: 'User', foreign_key: 'student_id'
end