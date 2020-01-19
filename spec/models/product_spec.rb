require 'rails_helper'

describe Product do
  describe "#create" do
    it "is invalid without a name" do
      product = build(:product, name:"")
      product.valid?
      expect(product.errors[:name]).to include()
    end

    it "is invalid without a description" do
      product = build(:product, description:"")
      product.valid?
      expect(product.errors[:description]).to include()
    end

    it "is invalid without a category_id" do
      product = build(:product, category_id:"")
      product.valid?
      expect(product.errors[:category_id]).to include()
    end

    it "is invalid without a brand_id" do
      product = build(:product, brand_id:"")
      product.valid?
      expect(product.errors[:brand_id]).to include()
    end

    it "is invalid without a price" do
      product = build(:product, price:"")
      product.valid?
      expect(product.errors[:price]).to include()
    end
    
    it "is invalid without a price less than 300" do
      product = build(:product, price:"299")
      product.valid?
      expect(product.errors[:price]).to include()
    end

    it "is invalid without a price over 10000000" do
      product = build(:product, price:"10000000")
      product.valid?
      expect(product.errors[:price]).to include()
    end
  end
end