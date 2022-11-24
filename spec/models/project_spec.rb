require "rails_helper"

=begin
RSpec Testing
    Purpose: Tests the behavior of objects within the model to drive development.
    Works with active record validation to ensure objects are working appropriately
    and as intended. Below, I added in a line which shows that description will not
    take 'nil' as input.
=end
RSpec.describe Project, type: :model do
        context "validations tests" do
            it "ensures the description is present" do
                project = Project.new(description: "Test Description")
                expect(project.valid?).to eq(true)
            end

            # Personally added this line for my own research.
            it "ensures the description cannot take nil" do
                project = Project.new(description: nil)
                expect(project.valid?).to eq(false)
            end
        end

        context "scopes tests" do


        end
    end