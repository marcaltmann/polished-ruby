require_relative('album_infos')

album_artists = {}

album_infos.each do |_, _, artist|
  album_artists[artist] ||= true
end

lookup = ->(artists) do
  artists.select do |artist|
    album_artists[artist]
  end
end

puts lookup.call(['Artist 6', 'Artist 4']).inspect
