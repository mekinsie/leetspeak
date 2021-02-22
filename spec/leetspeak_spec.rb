require('rspec')
require('leetspeak')

describe('#leetspeak') do
  it('returns a string as is when no Leetspeak rules apply') do
    expect(leetspeak("happy")).to(eq("happy"))
  end
end


# describe('String#leetspeak') do
#   it('returns a string as is when no Leetspeak rules apply') do
#     expect("happy".leetspeak).to(eq("happy"))
#   end
# end