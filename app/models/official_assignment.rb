class OfficialAssignment < ActiveRecord::Base
  belongs_to :offical
  belongs_to :assignment
  belongs_to :assignmentlevel
end
