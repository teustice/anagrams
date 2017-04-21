require 'rspec'
require 'anagram'

describe("String#anagram") do
  it("returns true if the input is an anagram")do
    expect("test".anagram("ttse")).to(eq(true))
  end
end
