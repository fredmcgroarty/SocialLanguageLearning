require 'spec_helper'

describe "Topics" do 

	context "adding" do
		before (:each) do
			@topic_sports = create(:topic)
		end

		it "are stored in the database" do 
			expect(Topic.last.name).to eq 'Sports'
		end

	end
end

