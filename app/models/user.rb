class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_one :user_info 
  has_one :user_profile
  has_many :conversations
  has_many :participants
  has_many :messages, :through => :conversations


  delegate 	:first_name,
  					:last_name,
  					:dob,
  					:gender,
  					:native_lang,
  					:first_lang,
  					:second_lang,
            :picture,
  					to: :user_profile, allow_nil: true

  after_create :create_user_profile

 def create_user_profile
    self.user_profile = UserProfile.create
  end

end