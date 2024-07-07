def fibo(n)
  array = [0,1]
  if n == 0
    return [0]
  elsif n == 1
    return [0,1]
  else
    i=2
    while i<=n
      array << array[i-1]+array[i-2]
      i+=1
    end
    return array
  end
end

# p fibo(8)

def fibo_rec(n,result=[0,1],i=2)
  if n == 1
    return [0]
  elsif n == 2
    return [0,1]
  elsif i<n
    p "n = #{n}"
    p "i = #{i}"
    p result
    fibo_rec(n,result<<result[i-1]+result[i-2],i+=1)
  end
  return result #acts as an else case and a return
end

# p fibo_rec(2)
p fibo_rec(5)
