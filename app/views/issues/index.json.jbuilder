json.issues do
  json.array!(@issues) do |issue|
    json.partial!(issue)
  end
end
