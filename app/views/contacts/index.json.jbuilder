json.array!(@contacts) do |contact|
  json.extract! contact, :id, :agent_id, :county
  json.url contact_url(contact, format: :json)
end
