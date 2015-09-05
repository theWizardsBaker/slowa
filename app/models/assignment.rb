class Assignment < ActiveRecord::Base
  belongs_to :home_team
  belongs_to :visiting_team
  belongs_to :head_official
end
