require 'benchmark'

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

def firstDuplicateBSearch(a)
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
limit = 100_000
limit.times { |n| a << rand(1..limit) }

Benchmark.bm(8) do |x|
    x.report("bsearch : ") do
        results = firstDuplicate a
    end

    x.report("include? : ") do
        results = firstDuplicateBSearch a
    end
end
