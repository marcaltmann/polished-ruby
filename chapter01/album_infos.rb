def album_infos
  100.times.flat_map do |i|
    10.times.map do |j|
      ["Album #{i}", j, "Artist #{j}"]
    end
  end
end
