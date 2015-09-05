class MeetingAttendance < ActiveRecord::Base
  belongs_to :assignment
  belongs_to :official
end
