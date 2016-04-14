require_relative 'printer'

class Calculator

  def add(a,b)
    output(a+b)
  end

  def subtract(a,b)
    output(a-b)
  end

  def output(number)
     Printer.new.pretty_print(number)
     #using SRP, we could use an initialize method to create the Printer alone, without the print method being called
  end

end
