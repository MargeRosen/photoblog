json.array!(@phlogs) do |phlog|
  json.extract! phlog, :title, :pic, :pic_processed, :location, :description
  json.url phlog_url(phlog, format: :json)
end
