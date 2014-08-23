json.array!(@fat_tests) do |fat_test|
  json.extract! fat_test, :id
  json.url fat_test_url(fat_test, format: :json)
end
