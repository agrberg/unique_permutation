# frozen_string_literal: true

# Adds `Array#unique_permutation` — generates only unique permutations using Knuth's Algorithm L
class Array
  def unique_permutation # rubocop:disable Metrics/AbcSize, Metrics/MethodLength
    return enum_for(:unique_permutation) unless block_given?

    # L1: Initialize — sort to get the first permutation in lexicographic order
    array_copy = sort
    yield array_copy.dup
    return if size <= 1

    loop do
      # L2: Find the rightmost j where a[j] < a[j+1]
      j = size - 2
      j -= 1 while j > 0 && array_copy[j] >= array_copy[j + 1]
      break unless array_copy[j] < array_copy[j + 1]

      # L3: Find the rightmost l greater than a[j]
      l = size - 1
      l -= 1 while array_copy[j] >= array_copy[l]

      # L4: Swap a[j] with a[l] and reverse the suffix after position j
      array_copy[j], array_copy[l] = array_copy[l], array_copy[j]
      array_copy[(j + 1)..] = array_copy[(j + 1)..].reverse

      yield array_copy.dup
    end
  end
end
