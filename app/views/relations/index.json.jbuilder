json.array!(@relations) do |relation|
  json.extract! relation, :user_id, :tweet_id
  json.url relation_url(relation, format: :json)
end