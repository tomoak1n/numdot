#!/usr/bin/env ruby

def pgen(n)
  if n== 1
    return  [[[1]]]
  end
  retary = []
  pp = pgen(n-1)
  pp.each do |ary|
    ary.each_index do |i|
      np = ary.dup
      np[i] = ary[i].dup
      np[i] << n
      retary << np
    end
    np = ary.dup
    np << [n]
    retary << np
  end
  retary
end

pgen(5).map{|a| puts a.map{|b| b.join}.join(".")}
      
    
