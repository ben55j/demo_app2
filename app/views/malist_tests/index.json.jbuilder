json.array!(@malist_tests) do |malist_test|
  json.extract! malist_test, :id, :content, :attribut, :cabinet
  json.url malist_test_url(malist_test, format: :json)
end
