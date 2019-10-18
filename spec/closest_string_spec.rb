require 'closest_string'

describe "Closest String" do
    it "returns array of two arrays with weight, index and number" do
        expect(closest("1 1")).to eq([[1, 0, 1], [1, 1, 1]])
    end

    it "returns array of two arrays with weight, index and number" do
        expect(closest("1 2")).to eq([[1, 0, 1], [2, 1, 2]])
    end

    it "returns array of two arrays with weight, index and number" do
        expect(closest("1 2 3")).to eq([[1, 0, 1], [2, 1, 2]])
    end

    it "returns array of two arrays with weight, index and number" do
        expect(closest("4 1 2 3")).to eq([[1, 1, 1], [2, 2, 2]])
    end

    it "returns array of two arrays with weight, index and number" do
        expect(closest("4 1 2 3")).to eq([[1, 1, 1], [2, 2, 2]])
    end

    it "returns array of two arrays with weight, index and number" do
        expect(closest("1 4 1 2 3 1")).to eq([[1, 0, 1], [1, 2, 1]])
    end

    it "returns array of two arrays with weight, index and number" do
        expect(closest("2 4 2 1 2 3 1")).to eq([[2, 0, 2], [2, 2, 2]])
    end

    it "returns array of two arrays with weight, index and number" do
        expect(closest("2 40 101 10 2 30 1")).to eq([[2, 0, 2], [2, 2, 101]])
    end
end