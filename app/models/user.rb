class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  

  acts_as_messageable

  has_one :user_info 
  has_one :user_profile
  has_many :bookings
  has_many :user_reviews
  

  delegate  :first_name,
            :last_name,
            :dob,
            :gender,
            :native_lang,
            :first_lang,
            :second_lang,
            :native_lang_lvl,
            :first_lang_lvl,
            :second_lang_lvl,
            :picture,
            :about_me,
            to: :user_profile, allow_nil: true
            
   delegate :exp_pts,
            to: :user_info, allow_nil: true


  after_create :create_user_profile

  def name
   return "#{first_name} #{last_name}"
  end


  def create_user_profile
    self.user_profile = UserProfile.create
  end

  def compatible_users
    matches = UserProfile.where(native_lang: user_profile.first_lang) 
    matches2 = matches.where(first_lang: user_profile.native_lang)
    @matches = matches2.sort_by {|match| (match.first_lang_lvl - first_lang_lvl).abs }.map(&:user)
  end


  def compatible_users_first
    matches = UserProfile.where(native_lang: user_profile.first_lang) 
    matches2 = matches.where(first_lang: user_profile.native_lang)
    @matches = matches2.sort_by {|match| (match.first_lang_lvl - first_lang_lvl).abs }.map(&:user)
    @matches1 = @matches[0..3]
  end


  def compatible_users_second
    matches = UserProfile.where(native_lang: user_profile.first_lang) 
    matches2 = matches.where(first_lang: user_profile.native_lang)
    @matches = matches2.sort_by {|match| (match.first_lang_lvl - first_lang_lvl).abs }.map(&:user)
    @matches2 = @matches[4..7]
  end

  def compatible_users_third
    matches = UserProfile.where(native_lang: user_profile.first_lang) 
    matches2 = matches.where(first_lang: user_profile.native_lang)
    @matches = matches2.sort_by {|match| (match.first_lang_lvl - first_lang_lvl).abs }.map(&:user)
    @matches3 = @matches[8..12]
  end

  def lang_level_name(level_name)
    target_level = (level_name == :first) ? first_lang_lvl : second_lang_lvl
    LANGLEVEL.find {|level| level.last == target_level}[0]
  end


end