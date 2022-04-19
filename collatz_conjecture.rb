# Class that represents the collatz sequences.

class Collatz

  def sequence(num)
    seq = [num]

    while num > 1
      if num.even?
        num /= 2
      else
        num = num * 3 + 1
      end

      seq.append(num)
    end

    seq
  end

  def next(num)
    if num.even?
      num /= 2
    else
      num = num * 3 + 1
    end

    num
  end

  def length(num)
    sequence(num).size
  end
end
