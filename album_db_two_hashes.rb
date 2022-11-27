require_relative('album_infos')

album_artists = {}
album_track_artists = {}

album_infos.each do |album, track, artist|
  (album_artists[album] ||= []) << artist
  (album_track_artists[[album, track]] ||= []) << artist
end
album_artists.each_value(&:uniq!)

lookup = ->(album, track=nil) do
  if track
    album_track_artists[[album, track]]
  else
    album_artists[album]
  end
end

puts lookup.call('Album 32').inspect
puts lookup.('Album 32', 4).inspect
