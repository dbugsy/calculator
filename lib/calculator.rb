require_relative 'printer'

class Calculator
attr_accessor :p

def initialize
  @p = Printer.new
end

  def add(a,b)
    @p.pretty_print(a + b)
  end

  def subtract(a,b)

    @p.pretty_print(a - b)
  end
end
