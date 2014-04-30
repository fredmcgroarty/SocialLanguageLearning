require 'spec_helper'

describe "matching algorithm" do 

  before(:each) do
    @mark = create(:user)
    create(:user_total_profile_1, user: @mark)
    @french = create(:user)    
    create(:user_total_profile_5, user: @french)
    @tiff = create(:user)    
    create(:user_total_profile_3, user: @tiff)
  end

  it "should match current user's wtl with other user's native language" do 
    login_as @mark
    visit '/'
    expect(page).to have_content("France")

  end  

  it "should not show users with different language req" do 

    visit '/'
    expect(page).not_to have_content("Tiff")
    
  end  

end  