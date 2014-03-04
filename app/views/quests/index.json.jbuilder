json.array!(@quests) do |quest|
  json.extract! quest, 
  json.url quest_url(quest, format: :json)
end
