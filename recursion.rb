def fibs(num)
  sequence = []
  (0...num).each do |i|
    sequence << i if i < 2
    sequence << sequence[-1] + sequence[-2] unless i < 2
  end
  sequence
end

p fibs(8)

def fibs_rec(num)
  return [0, 1] if num <= 2

  seq = fibs_rec(num - 1)
  seq << seq[-2] + seq[-1]
end

p fibs_rec(8)
