require 'rspec'
require 'anagram'

describe("String#anagram") do
  it("returns It's an anagram! if the input is an anagram")do
    expect("ruby".anagram("bury")).to(eq("It's an anagram!"))
  end
  it("returns returns It's an anagram! if the input is an anagram, regardless of case") do
    expect("Blue".anagram("Lube")).to(eq("It's an anagram!"))
  end
  it("checks if the input is an anagram, and a palindrome") do
    expect("racecar".anagram('carrace')).to(eq("It's an anagram, AND a palindrome"))
  end
end
