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
  it('changes a three digit number to roman numerals') do
    number = Number.new()
    expect(number.to_roman_numerals(629)).to eq('DCXXIX')
  end
  it('changes a four digit number to roman numerals') do
    number = Number.new()
    expect(number.to_roman_numerals(3292)).to eq('MMMCCXCII')
  end
  it('changes a three digit number with zeros to roman numerals') do
    number = Number.new()
    expect(number.to_roman_numerals(300)).to eq('CCC')
  end
  it('can handle a zeros') do
    number = Number.new()
    expect(number.to_roman_numerals(000)).to eq('')
  end
  it('changes a four digit number with zeros to roman numerals') do
    number = Number.new()
    expect(number.to_roman_numerals(3500)).to eq('MMMD')
  end
end
