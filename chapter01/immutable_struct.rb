A = Struct.new(:a, :b) do
  def initialize(...)
    super
    freeze
  end
end

a = A.new('hello', 'world')

puts a

a.b = 'underworld'
