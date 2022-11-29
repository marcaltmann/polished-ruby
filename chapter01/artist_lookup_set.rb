require 'set'
require_relative('album_infos')

album_artists = Set.new(album_infos.map(&:last))

lookup = ->(artists) do
  album_artists & artists
end

puts lookup.call(['Artist 6', 'Artist 4']).inspect
