require 'benchmark'

def firstDuplicateHash(a)
    temp = {}
    duplicates = []
    a.each_with_index do |n, i|
        duplicates << n  if temp.keys.include?(n) 
        temp[n] = i unless temp.keys.include?(n)
    end
    return -1 if duplicates.count == 0
    return duplicates.first unless duplicates.count == 0
end

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
limit = 20000
limit.times { |n| a << rand(1..limit) }

Benchmark.bm(7) do |x|
    x.report("array: ") do
        results = firstDuplicate a
    end
end
