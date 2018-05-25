require "rspec"
require "numbers_to_roman_numerals"

describe('Numbers_to_roman_numerals') do
  it('changes a given number to roman numerals') do
    number = Number.new()
    expect(number.to_roman_numerals(4)).to eq('IV')
  end
  it('changes a two digit number to roman numerals') do
    number = Number.new()
    expect(number.to_roman_numerals(43)).to eq('XLIII')
  end
end
