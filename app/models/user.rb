class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_one :user_info 
  has_one :user_profile

  delegate 	:first_name,
  					:last_name,
  					:dob,
  					:gender,
  					:native_lang,
  					:first_lang,
  					:second_lang,
  					to: :user_profile
end
