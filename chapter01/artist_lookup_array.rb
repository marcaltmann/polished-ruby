require_relative('album_infos')

album_artists = album_infos.map(&:last)
album_artists.uniq!

lookup = ->(artists) do
  album_artists & artists
end

puts lookup.call(['Artist 6', 'Artist 4']).inspect
