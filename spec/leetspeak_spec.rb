require('rspec')
require('leetspeak')

describe('#leetspeak') do
  it('returns a string as is when no Leetspeak rules apply') do
    expect(leetspeak("happy")).to(eq("happy"))
  end

  it('replaces every "e" in a string with a "3"') do
    expect(leetspeak("weeping")).to(eq("w33ping"))
  end

  it('replaces every "o" in a string with a "0"') do
    expect(leetspeak("pooping")).to(eq("p00ping"))
  end
  it('replaces every "I" in a string with a "1"') do
    expect(leetspeak("I like Ike")).to(eq("1 lik3 1k3"))
  end
  it('replaces every "s" in a string with a "z"') do
    expect(leetspeak("roses")).to(eq("r0z3z"))
  end
  it('does not replace the first letter when it is an s') do
    expect(leetspeak("sassafrass")).to(eq("sazzafrazz"))
  end
end
