FactoryGirl.define do

  factory :booking, class: "Booking" do
    start_time DateTime.new(2014,10,1,5,0,0)
    end_time DateTime.new(2014,10,1,6,0,0)
    length 1
    user_id 1
    student_id 2
  end

end

