class Supermarket
  attr_reader :product
  def initialize(product)
    @product = product
  end

  def comprar
    "You bought a #{@product.name} costing R$#{"%.2f" % @product.price}"
  end

end
