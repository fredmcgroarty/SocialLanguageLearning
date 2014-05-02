require 'spec_helper'

describe 'Topic index page' do
	before(:each) do 
		@mark = create(:user)
		@mark.user_profile = create(:user_total_profile_1)
		login_as @mark

	end

	context "with no topics added" do

		it "should inform the user there are no topics in the DB" do
			visit '/topics'
			expect(page).to have_content "No topics added yet!!!"
		end

		it "should add a topic to the DB when attempting to" do
			visit '/topics'
			click_link "Add more topics"
			fill_in "topic_name", with: "Sports"
			click_button "Create Topic"
			expect(page).to have_content "Sports"
		end
	end

	context "with multiple topics added" do

		it "should display all topics" do
			visit '/topics'
			click_link "Add more topics"
			fill_in "topic_name", with: "Sports"
			click_button "Create Topic"
			visit '/topics'
			click_link "Add more topics"
			fill_in "topic_name", with: "Weather"
			click_button "Create Topic"
			visit '/topics'
			click_link "Add more topics"
			fill_in "topic_name", with: "Food"
			click_button "Create Topic"
			expect(page).to have_content "Sports"
			expect(page).to have_content "Weather"
			expect(page).to have_content "Food"
		end
	end
end