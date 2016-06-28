require ("rspec")
require ("numbers_to_words")

describe ("Fixnum#numbers_to_words") do
  it ("returns a word for one number") do
    expect(19.translate()).to(eq("nineteen"))
  end
  it ("returns a two word for compound numbers") do
    expect(23.translate()).to(eq("twenty three"))
  end
  it ("returns a hundreds, tens and units") do
    expect(235.translate()).to(eq("two hundred thirty five"))
  end

  it ("returns thousands, hundreds, tens and units") do
    expect(10235.translate()).to(eq("ten thousand two hundred thirty five"))
  end

  it ("returns thousands, hundreds, tens and units") do
    expect(19235.translate()).to(eq("nineteen thousand two hundred thirty five"))
  end

  it ("returns millions, thousands, hundreds, tens and units") do
    expect(10010235.translate()).to(eq("ten million ten thousand two hundred thirty five"))
  end

end
