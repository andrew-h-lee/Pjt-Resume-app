json.array!(@personal_infos) do |personal_info|
  json.extract! personal_info, :id, :name, :tagline, :about, :email, :address, :phone, :twitter, :linkedin, :facebook, :google, :url
  json.url personal_info_url(personal_info, format: :json)
end
