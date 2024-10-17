def merge_sort(array)
  if array.length > 1
    front = array.take(array.length / 2)
    back = array.drop(array.length / 2)
    a = merge_sort(front)
    b = merge_sort(back)

    new_arr = []

    while !a.empty? && !b.empty?
      if a[0] < b[0]
        new_arr.push(a.shift)
      else
        new_arr.push(b.shift)
      end
    end
    new_arr.concat(a).concat(b)
  else
    array
  end
end
