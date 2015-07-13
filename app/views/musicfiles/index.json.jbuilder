json.array!(@musicfiles) do |musicfile|
  json.extract! musicfile, :id, :description
  json.url musicfile_url(musicfile, format: :json)
end
