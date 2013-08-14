json.array!(@test_ints) do |test_int|
  json.extract! test_int, :number
  json.url test_int_url(test_int, format: :json)
end