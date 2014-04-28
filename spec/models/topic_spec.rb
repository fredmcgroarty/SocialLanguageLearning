require 'spec_helper'

describe "Topics" do 

	context "when adding which languages a topic applies to" do

		it "should link to none if stated" do

			visit '/languages'
			click_link "Add more languages"
			fill_in "language_name", with: "French"
			click_button "Create Language"
			click_link "Add more topics"
			fill_in "topic_name", with: "Sports"
			click_button "Create Topic"
			expect(page).to have_content "French? Not implemented yet"

		end


	it "should be linked to the relevant language" do

		visit '/languages'
		click_link "Add more languages"
		fill_in "language_name", with: "Spanish"
		click_button "Create Language"
		click_link "Add more languages"
		fill_in "language_name", with: "French"
		click_button "Create Language"
		click_link "Add more topics"
		fill_in "topic_name", with: "Sports"
		find("#topic_french").set(true)
		click_button "Create Topic"
		expect(page).to have_content "Spanish? Not implemented yet"
		expect(page).to have_content "French? Supported"

		end

	end

end