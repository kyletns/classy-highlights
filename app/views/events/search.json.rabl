collection @events

attributes :id, :kind, :title

node :video_count do |event|
  event.videos.length
end

node :starts_at do |event|
  event.starts_at.strftime('%b %e, %l:%M:%S%p') if event.starts_at
end

node :ends_at do |event|
  event.ends_at.strftime('%l:%M:%S%p') if event.ends_at
end

node :starts_at_since_epoch do |event|
  event.starts_at.to_i
end

node :ends_at_since_epoch do |event|
  event.ends_at.to_i
end
