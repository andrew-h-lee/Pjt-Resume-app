json.array!(@project_images) do |project_image|
  json.extract! project_image, :id, :image, :caption, :project_id
  json.url project_image_url(project_image, format: :json)
end
