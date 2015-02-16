require 'minitest/autorun'
require 'minitest/pride'
require './calculator'

class CalculatorTest < Minitest::Test
  def test_it_adds
    calc = Calculator.new
    result = calc.add(5, 6)
    assert_equal 11, result
  end
  
  def test_it_adds_with_a_negative
    calc = Calculator.new
    result = calc.add(5, -6)
    assert_equal -1, result
  end
  
  def test_it_subtracts
    calc = Calculator.new
    result = calc.subtract(10, 6)
    assert_equal 4, result
  end
  
  def test_it_squares
    calc = Calculator.new
    result = calc.square(10)
    assert_equal 100, result
  end

  # Next Tests
  
  def test_it_divides
    calc = Calculator.new
    result = calc.division(10,5)
    assert_equal 2, result
  end
  
  def test_it_multiplies
    calc = Calculator.new
    result = calc.multiply(10,5)
    assert_equal 50, result
  end
  
  def test_it_raises_to_a_power
    calc = Calculator.new
    result = calc.power(2,2)
    assert_equal 4, result
  end
  
  def test_it_records_the_last_result
    calc = Calculator.new
    result = calc.add(10,5)
    result = calc.add(2,2)
    result = calc.last_result
    assert_equal 15, result
  end
  
  def test_it_clears
    calc = Calculator.new
    result = calc.add(10,5)
    result = calc.add(2,2)
    result = calc.last_result
    result = calc.clear 
    assert_equal 0, result
  end
end