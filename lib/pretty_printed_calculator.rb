class PrettyPrintedCalculator
  def initialize(calculator, printer)
    @calculator = calculator
    @printer = printer
  end

  def add(a,b)
    @printer.pretty_print(@calculator.add(a,b))
  end
end