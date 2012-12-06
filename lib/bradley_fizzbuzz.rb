require "bradley_fizzbuzz/version"

module BradleyFizzbuzz
  def fizzbuzz
    array = Array.new
    
    self.each do |n|
      if n.fizzbuzz?
        array << "fizzbuzz"
      elsif n.buzz?
        array << "buzz"
      elsif n.fizz?
        array << "fizz"
      else
        array << n
      end
    end
    
    array
  end
  
  def print_fizzbuzz
    self.fizzbuzz.each do |value| 
      puts value
    end
  end
end

module FizzBuzzNumerics
  def fizz?
    self % 3 == 0
  end
  
  def buzz?
    self % 5 == 0
  end
  
  def fizzbuzz?
    self % 5 == 0 && self % 3 == 0
  end
end

class Numeric
  include FizzBuzzNumerics
end

class Array
  include BradleyFizzbuzz
end

class Range
  include BradleyFizzbuzz
end
