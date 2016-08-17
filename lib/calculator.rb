require_relative 'printer'

class Calculator

  def initialize(printer = Printer.new)
    @printer = printer
  end

  def add(a,b)
    output(a + b)
  end

  def subtract(a,b)
    output(a - b)
  end

  private
  
  def output(number)
    printer.pretty_print(number)
  end

  def printer
    @printer
  end
end
