json.array!(@samples) do |sample|
  json.extract! sample, :id, :title, :body, :published
  json.url sample_url(sample, format: :json)
end
