json.array!(@masters) do |master|
  json.extract! master, :name, :email, :slogan
  json.url master_url(master, format: :json)
end