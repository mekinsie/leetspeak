require('rspec')
require('leetspeak')

describe('String#leetspeak') do
  it('returns a string as is when no Leetspeak rules apply') do
    expect("happy".leetspeak).to(eq("happy"))
  end
  it('replaces every "e" in a string with a "3"') do
    expect("weeping".leetspeak).to(eq("w33ping"))
  end
  it('replaces every "o" in a string with a "0"') do
    expect("pooping".leetspeak).to(eq("p00ping"))
  end
  it('replaces every "I" in a string with a "1"') do
    expect("I like Ike".leetspeak).to(eq("1 lik3 1k3"))
  end
  it('replaces every "s" in a string with a "z"') do
    expect("roses".leetspeak).to(eq("r0z3z"))
  end
  it('does not replace the first letter when it is an s') do
    expect("sassafrass".leetspeak).to(eq("sazzafrazz"))
  end
  it('replaces letters correctly in a string of words') do
    expect("I scream you scream we all scream it is very awkward.".leetspeak).to(eq("1 scr3am y0u scr3am w3 all scr3am it iz v3ry awkward."))
  end
end
