def luck(number)
  nums = number.to_s.split('')
  first = []
  second = []


  j = 0
  while j < nums.length
    nums[j]= nums[j].to_i
    j += 1
  end

  if nums.length.even?
    mega_arr = nums.each_slice(nums.length/2).to_a
    first.replace(mega_arr[0])
    second.replace(mega_arr[1])
    x = first.inject{|sum,i| sum + i}
    y = second.inject{|sum,i| sum + i}
  else
    mega_arr = nums.each_slice(nums.length/2 + 1).to_a
    first.replace(mega_arr[0])
    first.pop
    second.replace(mega_arr[1])
    x = first.inject{|sum,i| sum + i}
    puts x
    y = second.inject{|sum,i| sum + i}
    puts y
  end


  if x == y
    nums = true
  else
    nums = false
  end
  nums
end

# puts luck(82355)
