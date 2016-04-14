require_relative 'printer'

class Calculator
  def initialize(printer = Printer.new)
    @printer = printer
  end

  def add(a,b)
    @printer.pretty_print(a + b)
  end

  def subtract(a,b)
    @printer.pretty_print(a - b)
  end
end
