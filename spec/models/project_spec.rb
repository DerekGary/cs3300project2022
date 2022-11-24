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
                expect(project.valid?).to eq(false)
            end

            it "ensures the title is present" do
                project = Project.new(title: "New Title")
                expect(project.valid?).to eq(false)
              end

            it "should be able to save project" do
                project = Project.new(title: "Test Title", description: "Test description")
                expect(project.save).to eq(true)
            end
        end

=begin
Scopes Testing
        Purpose: Tests whether three project object instances can be created 
        each housing a hash containing title and description parameters. Let
        is used in a way which is called 'lazy loading'.
=end
        context "scopes tests" do
            let(:params) { { title: "Title", description: "some description" } }
            before(:each) do
               Project.create(params)
               Project.create(params)
               Project.create(params)
            end
            
            it "should return all projects" do
               expect(Project.count).to eq(3)
            end
        end
    end