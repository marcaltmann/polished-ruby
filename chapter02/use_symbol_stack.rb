require_relative('symbol_stack')

stack = SymbolStack.new

stack.push(:hello)
stack.push(:world)

puts stack.pop.inspect
puts stack.pop.inspect
