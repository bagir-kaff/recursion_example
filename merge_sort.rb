aa = [1,4,5,8]
bb = [2,6,7,9]


def merge_algorithm (aa,bb)
  a,b,i = 0,0,0
  cc=[]
  while a<aa.length && b<bb.length
    if aa[a] < bb[b]
      cc[i]=aa[a].to_i
      a+=1
    else
      cc[i]=bb[b]
      b+=1
    end
    i+=1
  end

  while a<aa.length
    cc[i] = aa[a]
    i+=1
    a+=1
  end

  while b<bb.length
    cc[i] = bb[b]
    i+=1
    b+=1
  end
  cc
end

list1 = [3, 2, 1, 13, 8, 5, 0, 1]
list2 = [105, 79, 100, 110]
# p list[0...2]
# p merge_algorithm(list[0...1],list[1..1])

def sorting (arr)
  p "arr = #{arr}"
  return arr if arr.length==1 # make the code clearer
  h = arr.length-1
  if 0<h
    mid = (h)/2
    left_half = sorting(arr[0..mid])
    right_half = sorting(arr[mid+1..h])
    # p "left half = #{left_half}"
    # p "right half = #{right_half}"
    arr = merge_algorithm(left_half,right_half)
  end
  arr
end

p sorting(list1)
p sorting(list2)
