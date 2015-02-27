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

  it "can convert 2395 to MMCCCXCV" do
    expect(RomanNumerals.convert(2395)).to eq("MMCCCXCV")
  end

  it "can convert I to 1" do
    expect(RomanNumerals.reconvert("I")).to eq(1)
  end

  it "can convert V to 5" do
    expect(RomanNumerals.reconvert("V")).to eq(5)
  end

  it "can convert X to 10" do
    expect(RomanNumerals.reconvert("X")).to eq(10)
  end

  it "can convert XXXV to 35" do
    expect(RomanNumerals.reconvert("XXXV")).to eq(35)
  end
  
  it "can convert CMXCVI to 996" do
    expect(RomanNumerals.reconvert("CMXCVI")).to eq(996)
  end

end

