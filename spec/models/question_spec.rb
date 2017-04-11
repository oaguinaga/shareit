require 'rails_helper'

RSpec.describe Question, type: :model do
  let(:question) { Question.create!(title: "New Question Title", body: "New Question Body", resolve: false) }

   describe "attributes" do
     it "has title, body and resolve attributes" do
       expect(question).to have_attributes(title: "New Question Title", body: "New Question Body", resolve: false)
     end
   end
end
