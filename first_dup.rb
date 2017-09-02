def firstDuplicate(a)
    temp = []
    duplicates = []
    a.each do |n|
       duplicates << n  if temp.bsearch {|x| x == n} 
       temp << n unless temp.bsearch {|x| x == n} 
    end
    return -1 if duplicates.count == 0
    return duplicates.first unless duplicates.count == 0
end
a=[]
limit = 100_000
limit.times { |n| a << rand(1..limit) }
puts firstDuplicate a