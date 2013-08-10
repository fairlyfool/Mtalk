json.array!(@mtalks) do |mtalk|
  json.extract! mtalk, :name, :word
  json.url mtalk_url(mtalk, format: :json)
end
