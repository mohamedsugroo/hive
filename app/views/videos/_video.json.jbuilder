json.extract! video, :id, :title, :description, :duration, :created_at, :updated_at
json.url video_url(video, format: :json)

json.relate_videos @videos.each do |v|
	json.id v.id
	json.title v.title
	json.count v.count
	json.impressionist_count v.impressionist_count
	json.description v.description
	json.url video_url(v)

end
