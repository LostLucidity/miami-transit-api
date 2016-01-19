json.array!(@bus_reports) do |bus_report|
  json.extract! bus_report, :id, :lat, :long, :bustime, :speed, :busid
  json.url bus_report_url(bus_report, format: :json)
end
