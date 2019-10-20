require 'closest_string'

describe "Closest" do
    it "passes string with two identical numbers and formats output" do
        expect(closest("1 1")).to eq([[1, 0, 1], [1, 1, 1]])
    end

    it "passes string with 2 sequential numbers and formats output" do
        expect(closest("1 2")).to eq([[1, 0, 1], [2, 1, 2]])
    end

    it "passes string with 3 sequential numbers and formats output" do
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

    it "returns array of two arrays with weight, index and number" do
        expect(closest("2 40 101 10 2 30 101 2")).to eq([[2, 6, 101], [2, 7, 2]])
    end

    it "returns array of two arrays with weight, index and number" do
        expect(closest("456899 50 11992 176 272293 163 389128 96 290193 85 52")).to eq([[13, 9, 85], [14, 3, 176]])
        
    end

    it "returns array of two arrays with weight, index and number" do
        
       expect(closest("89998 187 126159 175 338292 89 39962 145 394230 167 1")).to eq([[13, 3, 175], [14, 9, 167]])
    end
end