require_relative 'array_list'

describe ArrayList do

  before(:each) do
    @arr_list_obj = ArrayList.new
    @arr_list = @arr_list_obj.new(4)
    @outofbounds = @arr_list.length
  end

  describe "#new" do 
    it "takes an integer parameter and returns a new array of integer size" do
      expect(@arr_list.length).to eq(4)
    end
  end

  describe "#add" do 
    it "takes an element parameter, adds the element to the array end, and returns the element" do
      expect(@arr_list_obj.add("hello")).to be(@arr_list[-1])
    end
  end

  describe "#get" do 
    it "takes an index parameter and returns the element at that index" do
      expect(@arr_list_obj.get(3)).to eq(@arr_list[3])
    end

    it "throws an error if the index is out of bounds" do
      expect { @arr_list_obj.get(@outofbounds) }.to raise_error(IndexError)
    end
  end
  
  describe "#set" do 
    it "takes an index and an element parameter, sets the index with the element, and returns the element" do
      expect(@arr_list_obj.set(0, "success")).to eq(@arr_list[0])
    end

    it "throws an error if the index is out of bounds" do
      expect { @arr_list_obj.set(@outofbounds, "fail") }.to raise_error(IndexError)
    end
  end
  
  describe "#length" do 
    it "returns the number of elements in the array" do
      expect(@arr_list_obj.length).to eq(@arr_list.length)
    end
  end

  describe "#insert" do 
    it "takes an index and an element parameter and injects the element at the index if the index exists" do
      @arr_list_obj.insert(2, "new element")
      expect(@arr_list.length).to eq(5)
    end

    it "throws an error if the index is out of bounds" do
      expect { @arr_list_obj.insert(@outofbounds, "fail") }.to raise_error(IndexError)
    end
  end

end
