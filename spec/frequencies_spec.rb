require_relative "../frequencies"

describe("#frequencies") do
  it("returns an empty Hash when passed an empty string") do
    results = frequencies("")
    expect(results).to eq({})
  end

  it("test: the lazy dog jumped over the brown fox") do
    results = frequencies("the lazy dog jumped over the brown fox")
    expect(results["the"]).to eq(2)
    expect(results["jumped"]).to eq(1)
  end
end
