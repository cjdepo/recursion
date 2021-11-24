def collatz(n, count=0)
    if n == 1
        puts count
        return
    elsif n.even?
        count += 1
        collatz(n/2, count)
    elsif n.odd?
        count += 1
        collatz(3 * n + 1, count)
    end
end

def palin(string)
    if string.length == 1 || string.length == 0
        true
    elsif string[0] == string[-1]
            palin(string[1..-2])
    else
        false
    end
end

def bottle_count(n)
    if n == 0
        puts "no bottles of beer on the wall"
    else
        puts "#{n} bottles of beer on the wall"
        bottle_count(n-1)
    end
end

def fib(n)
    if n == 0
        0
    elsif n == 1
        1
    else
        fib(n-1) + fib(n-2)
    end
end

def flat(array, new=[])
    array.each { |v| v.class == Array ? flat(v, new) : new << v }
    new
end

def romap(roman_mapping, int, result='')
    return result if int == 0
    roman_mapping.keys.each do |key| 
        rom = int.divmod(key)
        rom[0].times { result << roman_mapping[key] }
        int = rom[1]
        return romap(roman_mapping, int, result) if rom[0] > 0
    end
end


def mapro(roman_mapping, roman, result=0)
    return result if roman == ''
    roman_mapping.keys.each do |rom|
        if roman.start_with?(rom)
            result += roman_mapping[rom]
            roman = roman.slice(rom.length, roman.length)
            return mapro(roman_mapping, roman, result)
        end
    end
end

roman_mapping = {
    "M" => 1000,
    "CM" => 900,
    "D" => 500,
    "CD" => 400,
    "C" => 100,
    "XC" => 90,
    "L" => 50,
    "XL" => 40,
    "X" => 10,
    "IX" => 9,
    "V" => 5,
    "IV" => 4,
    "I" => 1
  }

p mapro(roman_mapping, 'XXXVI')