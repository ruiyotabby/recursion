def fibs(num)
  sequence = []
  (0...num).each do |i|
    sequence << i if i < 2
    sequence << sequence[-1] + sequence[-2] unless i < 2
  end
  sequence
end

p fibs(8)

def fibs_rec(num, seq = [])
  if num <= 2
    (0...num).each { |i| seq << i }
    return seq
  end
  seq = fibs_rec(num - 1)
  seq << seq[-1] + seq[-2]
end

p fibs_rec(8)
