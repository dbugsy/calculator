require_relative 'printer'

class Calculator
  
  attr_reader :printer

  def initialize(printer=Printer.new)
  	@printer = printer
  end

  def add(a,b)
    printer.pretty_print(a + b)
  end

  def subtract(a,b)
    printer.pretty_print(a - b)
  end
end
