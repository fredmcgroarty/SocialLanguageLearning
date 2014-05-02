require 'spec_helper'

describe 'Spec Helper' do

	before(:each) do 
		@mark = create(:user)
		create(:user_total_profile_1, user: @mark)
		@tiff = create(:user)
		create(:user_total_profile_2, user: @tiff)
	end

	it "Fred cannot send in messages without registering a profile" do 
		@fred = create(:user)
		create(:user_profile, user: @fred)
		login_as @fred
		expect(@fred.id).to eq (3)
		visit '/user_profiles/3'
		click_link 'Message'
		expect(current_path).to eq(edit_user_profile_path(@fred))
	end

	context "one user messaging another" do 		

		it "Mark messages Tiff" do
			logout(@fred)
			login_as @mark 
			expect(@mark.first_lang).to eq "French" 
			visit '/user_profiles/2'
			save_and_open_page
			within(:css, ".col-xs-6.col-md-5.col-md-offset-1") do
				click_link 'Message'
			end
			fill_in "subject", :with => 'Hello'
			fill_in "body", :with => 'This is a message'
			click_button 'Send message'
			expect(@tiff.mailbox.inbox.last.subject).to eq "Hello"
		end
	end
end

describe "two equal entities" do
  before do
    @entity1 = FactoryGirl.create(:user)
    @entity2 = FactoryGirl.create(:user)
  end

  context "message sending" do
   	before do
     @receipt1 = @entity1.send_message(@entity2,"Body","Subject")
     @message1 = @receipt1.notification
    end

    it "should create proper message" do
      @message1.sender.id.should == @entity1.id
      @message1.sender.class.should == @entity1.class
      assert @message1.body.eql?"Body"
      assert @message1.subject.eql?"Subject"
    end
  end
end
