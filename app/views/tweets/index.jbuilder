json.tweets do
  json.array! @tweets.sort_by{|t| -t.id} do |tweet|
    json.id         tweet.id
    json.username   tweet.user.username
    json.message    tweet.message
  end
end
