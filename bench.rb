require 'benchmark'
require 'set'
require 'random_token'

n = 10000

Benchmark.bm(7) do |x|
  x.report("array:") do
    created_tokens = []
    while created_tokens.size < n
      token = RandomToken.gen(10)
      if created_tokens.include?(token)
        next
      else
        created_tokens << token
      end
    end
    results = created_tokens
  end

  x.report("hash:") do
    created_tokens_hash = {}
    while created_tokens_hash.size < n
      token = RandomToken.gen(10)
      created_tokens_hash[token] = true
    end
    results = created_tokens_hash.keys
  end

  x.report("set:") do
    created_tokens_set = Set.new
    while created_tokens_set.size < n
      token = RandomToken.gen(10)
      created_tokens_set << token
    end
    results = created_tokens_set.to_a
  end
end