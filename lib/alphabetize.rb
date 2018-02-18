def alphabetize(arr)
  sort = []
  alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz "
  arr.each do |string|
    j = 0
    if sort == []
      sort << string
      next
    end 
    if alphabet.index(string[0]) < alphabet.index(sort[0][0])
      sort.unshift(string)
      next 
    end 
    while j <= sort.size - 1 
      i = 0 
      while i <= string.size - 1
        if alphabet.index(string[i]) > alphabet.index(sort[j][i])
          break
        end
        if alphabet.index(string[i]) < alphabet.index(sort[j][i])
          sort.insert(j, string)
          j = sort.size + 1
          break
        end
        i += 1 
      end
      j += 1 
    end 
    if j == sort.size
      sort.push(string)
    end 
  end
  sort
end