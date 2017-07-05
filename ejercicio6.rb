class Product
  attr_accessor :name, :large, :medium, :small, :xsmall
  def initialize(name, large, medium, small, xsmall)
    @name = name
    @large = large
    @medium = medium
    @small = small
    @xsmall = xsmall
  end
  def promedio
    promedio = @large.to_i + @medium.to_i + @small.to_i + @xsmall.to_i/4
  end
end

products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}
data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(*ls)
end

products_list.each_index do |i|
  puts "El producto #{products_list[i].name} tiene un promedio de: #{products_list[i].promedio}"
end
