=begin
Active Record Validation
    Purpose: Ensures that listed attributes
    will be a part of the Project class by marking it
    as invalid when given erroneous test data by RSpec.
=end

class Project < ApplicationRecord
    # require title and description
    # validates_presence_of :title :description
end
