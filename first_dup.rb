def firstDuplicate(a)
    temp = []
    duplicates = []
    a.each do |n|
       duplicates << n  if temp.include?(n) 
       temp << n unless temp.include?(n)
    end
    return -1 if duplicates.count == 0
    return duplicates.first unless duplicates.count == 0
 end
a=[]
(10**5).times { |n| a << (rand*10).to_i + 1 }
puts a.count
# puts firstDuplicate a