json.array!(@sprints) do |sprint|
  json.extract! sprint, :id, :project_id, :name
  json.url sprint_url(sprint, format: :json)
end
