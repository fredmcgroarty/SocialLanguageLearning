
require 'spec_helper'

describe "matching algorithm" do 

  before(:each) do
    @mark = create(:user)
    create(:user_total_profile_1, user: @mark)
    @french = create(:user)    
    create(:user_total_profile_5, user: @french)
    @tiff = create(:user)    
    create(:user_total_profile_3, user: @tiff)
    @spanish = create(:user)    
    create(:user_total_profile_6, user: @spanish)
    @france_lower = create(:user)    
    create(:user_total_profile_7, user: @france_lower)

    login_as @mark
  end

  it "should match current user's wtl with other user's native language" do 

    visit '/'
    expect(page).to have_content("France")

  end  

  it "should not show users with different language first req" do 

    visit '/'
    expect(page).not_to have_content("Tiff")
    
  end  


  it "should not show users with different language native req" do 

    visit '/'
    expect(page).not_to have_content("Spanish")
    
  end  

  it "should sort compatible users according to closest first lang lvl" do 

    visit '/'
    expect(page).to have_content("France C France_lower")
    
  end  

end  

