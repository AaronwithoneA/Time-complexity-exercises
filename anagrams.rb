#Phase 1 O(n!n)

def anagram?(str1, str2)
  first_anagram(str1).include?(str2)
end

def first_anagram(string)
  anagrams = string.split('').permutation.to_a.map(&:join)
  array_strings = anagrams.map(&:to_s)
  array_strings - [string]
end

# O(n)
def second_anagram?(str1, str2)
  str1.chars.each do |chr|
    if str2.include?(chr)
      str1.delete!(chr)
      str2.delete!(chr)
    end
  end
  return true if str1.length == 0 && str2.length == 0
  false
end

# O(nlogn)
def third_anagram? (str1, str2)
  str1.split('').sort == str2.split('').sort
end

# O(n)
def fourth_anagram?(str1, str2)
  hash1 = Hash.new(0)
  hash2 = Hash.new(0)
  str1.chars.each do |chr|
    hash1[chr] += 1
  end

  str2.chars.each do |chr|
    hash2[chr] += 1
  end

  hash1 == hash2
end



p fourth_anagram?("gizmo", "sally")    #=> false
p fourth_anagram?("elvis", "lives")
