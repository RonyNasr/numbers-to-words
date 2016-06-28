require ("pry")

class Fixnum
  define_method(:translate) do
    numbers = {1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen", 20 => "twenty", 30 => "thirty", 40 => "forty", 50 => "fifty", 60 => "sixty", 70 => "seventy", 80 => "eighty", 90 => "ninety"}
    word = ""

    if !numbers.include?(self)
      inputNumber = self
      if (inputNumber./(1000000)).>(0)
        word.concat(numbers.fetch((inputNumber./(1000000)).floor()))
        word.concat(" million ")
        inputNumber = inputNumber.%(1000000)
      end

      if (inputNumber./(100000)).>(0)
        word.concat(numbers.fetch((inputNumber./(100000)).floor()))
        word.concat(" hundred ")
        inputNumber = inputNumber.%(100000)
      end

      if (inputNumber./(10000)).>(2)
      word.concat(numbers.fetch((inputNumber./(10000)).*(10).floor()))
      word.concat(" ")
      inputNumber = inputNumber.%(10000)

      end
      if (inputNumber./(1000)).>(0)
        word.concat(numbers.fetch((inputNumber./(1000)).floor()))

        inputNumber = inputNumber.%(1000)
      end

      if self >= 1000
        word.concat(" thousand ")
      end

      if (inputNumber./(100)).>(0)
        word.concat(numbers.fetch((inputNumber./(100)).floor()))
        word.concat(" hundred ")
        inputNumber = inputNumber.%(100)
      end

      if (inputNumber./(10)).>(0)
        word.concat(numbers.fetch((inputNumber./10).floor().*10))
        word.concat(" ")
        inputNumber = inputNumber.%(10)
      end
      word.concat(numbers.fetch(inputNumber))
    else
      word.concat(numbers.fetch(self))
    end
    word
    end
end
