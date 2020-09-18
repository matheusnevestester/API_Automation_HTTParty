# hooks
Before '@postman_echo' do
  @postman_echo_model = PostmanEcho.new
end

Before '@postRequest' do
  @raw = Faker::Lorem.sentence
end