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
  it("checks if the input is an actual word") do
    expect("qwrt".anagram("trwq")).to(eq("That is not a real word"))
  end
  it("checks if the input is an antigram") do
    expect("hi".anagram("bye")).to(eq("These words have no matching letters and are antigrams!"))
  end
  it("checks if a string of multiple words is an anagram") do
    expect("Dormitory".anagram("Dirty Room")).to(eq("It's an anagram!"))
  end
  it("checks if a string of multiple words is an anagram AND a palindrome") do
    expect("Race Car".anagram("Car Race")).to(eq("It's an anagram, AND a palindrome"))
  end
  it("if the input is not an anagram, it returns how many matches there were") do
    expect("Snoopy".anagram("Snoopie")).to(eq("That is not an anagram, but 5 letters match: s,n,o,o,p."))
  end
end
