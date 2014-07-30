require ('rspec')
require ('luck')

describe ('luck') do
  it('will take 11 and return true, because 1 = 1') do
    expect(luck(11)).to(eq(true))
  end
  it('will take 8255 and return true, because 10 = 10') do
    expect(luck(8255)).to(eq(true))
  end
end
