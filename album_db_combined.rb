require_relative('album_infos')

albums = {}
album_infos.each do |album, track, artist|
  album_array = albums[album] ||= [[]]
  album_array[0] << artist
  (album_array[track] ||= []) << artist
end
albums.each_value do |array|
  array[0].uniq!
end

lookup = ->(album, track=0) do
  albums.dig(album, track)
end

puts lookup.call('Album 32').inspect
puts lookup.('Album 32', 4).inspect
