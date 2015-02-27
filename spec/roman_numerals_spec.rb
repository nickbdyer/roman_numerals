require 'roman_numerals'

describe RomanNumerals do

  it "can convert 1 to I" do
    expect(RomanNumerals.convert(1)).to eq("I")
  end

  it "can convert 5 to V" do
    expect(RomanNumerals.convert(5)).to eq("V")
  end

  it "can convert 10 to X" do
    expect(RomanNumerals.convert(10)).to eq("X")
  end

  it "can convert 35 to IX" do
    expect(RomanNumerals.convert(35)).to eq("XXXV")
  end

  it "can convert 996 to CMXCVI" do
    expect(RomanNumerals.convert(996)).to eq("CMXCVI")
  end

end

