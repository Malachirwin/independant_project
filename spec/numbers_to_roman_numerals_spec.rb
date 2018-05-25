require "rspec"
require "numbers_to_roman_numerals"

describe('Numbers_to_roman_numerals') do
  it('changes a given number to roman numerals') do
    number = Number.new(4)
    expect(number.to_roman_numerals).to eq('IV')
  end
  it('changes a two digit number to roman numerals') do
    number = Number.new(43)
    expect(number.to_roman_numerals).to eq('XLIII')
  end
  it('changes a three digit number to roman numerals') do
    number = Number.new(629)
    expect(number.to_roman_numerals).to eq('DCXXIX')
  end
  it('changes a four digit number to roman numerals') do
    number = Number.new(3292)
    expect(number.to_roman_numerals).to eq('MMMCCXCII')
  end
  it('changes a three digit number with zeros to roman numerals') do
    number = Number.new(300)
    expect(number.to_roman_numerals).to eq('CCC')
  end
  it('can handle a zeros') do
    number = Number.new(000)
    expect(number.to_roman_numerals).to eq('')
  end
  it('changes a four digit number with zeros to roman numerals') do
    number = Number.new(3500)
    expect(number.to_roman_numerals).to eq('MMMD')
  end
  it('changes a four digit number with zeros to roman numerals') do
    number = Number.new(9462)
    expect(number.to_roman_numerals).to eq('MↂCDLXII')
  end
end
