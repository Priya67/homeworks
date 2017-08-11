require 'rspec'
require 'lru_cache'

describe LRUCache do
  subject(:lru) {LRUCache.new(4)}

  describe "#initialize" do
    it "takes input from the user" do
      expect(lru.size).to eq(4)
    end

    it "sets cache to empty" do
      expect(lru.cache).to be_empty
    end
  end

  describe "#count" do
    it "counts the size of cache" do
      expect(lru.cache.count).to eq(0)
    end
  end

  describe "#add" do
    it "adds an element to the end of cache" do
      lru.add("I walk the line")
      expect(lru.cache).to include("I walk the line")
    end
  end
end
