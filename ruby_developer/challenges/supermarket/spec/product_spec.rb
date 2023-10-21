require 'rspec'
require 'product.rb'

describe Product do
  describe "Product initialized" do
    it  'Object Product is initialized' do
        product = Product.new('Forma', 60.00)
        expect(product.name).to eq('Forma')
        expect(product.price).to eq(60.00)
      end
  end
end