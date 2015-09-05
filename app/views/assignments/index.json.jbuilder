json.array!(@assignments) do |assignment|
  json.extract! assignment, :id, :home_team_id, :visiting_team_id, :meet_type, :cancelled, :match_date, :head_official_id, :keep_attendance, :comments
  json.url assignment_url(assignment, format: :json)
end
