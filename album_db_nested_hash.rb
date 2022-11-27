require_relative('album_infos')

albums = {}

album_infos.each do |album, track, artist|
  ((albums[album] ||= {})[track] ||= []) << artist
end

lookup = ->(album, track=nil) do
  if track
    albums.dig(album, track)
  else
    a = albums[album].each_value.to_a
    a.flatten!
    a.uniq!
    a
  end
end

puts lookup.call('Album 43').inspect
puts lookup.call('Album 43', 4).inspect
