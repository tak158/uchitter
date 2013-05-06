json.array!(@relations) do |relation|
  json.extract! relation, :user_id, :to_user
  json.url relation_url(relation, format: :json)
end