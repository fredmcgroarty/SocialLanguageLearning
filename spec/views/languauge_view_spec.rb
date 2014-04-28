require 'spec_helper'

describe 'Language index page' do

	context "with no languages added" do

		it "should inform the user there are no languages in the DB" do
			visit '/languages'

			expect(page).to have_content "No languages added yet!!!"

		end

		it "should add a language to the DB when attempting to" do
			visit '/languages'
			click_link "Add more languages"
			fill_in "language_name", with: "Italian"
			click_button "Create Language"

			expect(page).to have_content "Italian"

		end

	end

	context "with 3 languages added" do

		it "should display all three languages" do

			visit '/languages'
			click_link "Add more languages"
			fill_in "language_name", with: "Italian"
			click_button "Create Language"
			click_link "Add more languages"
			fill_in "language_name", with: "Arabic"
			click_button "Create Language"
			click_link "Add more languages"
			fill_in "language_name", with: "Chinese"
			click_button "Create Language"

			expect(page).to have_content "Italian"
			expect(page).to have_content "Arabic"
			expect(page).to have_content "Chinese"

		end

	end

end