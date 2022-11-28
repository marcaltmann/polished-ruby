Artist = Struct.new(:name, :album)

artist1 = Artist.new('Antonio Vivaldi', 'The Four Seasons')
puts artist1.inspect
puts artist1.name, artist1.album

puts Artist.class
puts artist1.class

FirstStruct = Struct.new('Test', :a, :b)
test = FirstStruct.new('test1', 'test2')

puts FirstStruct.class
puts test.class
