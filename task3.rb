class QuadraticEquation
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    raise ArgumentError, "a не може дорівнювати 0" if a == 0

    @a = a
    @b = b
    @c = c
  end

  def discriminant
    @b**2 - 4 * @a * @c
  end

  def roots
    d = discriminant

    if d > 0
      x1 = (-@b + Math.sqrt(d)) / (2.0 * @a)
      x2 = (-@b - Math.sqrt(d)) / (2.0 * @a)
      puts "Два корені: x1 = #{x1}, x2 = #{x2}"
    elsif d == 0
      x = -@b / (2.0 * @a)
      puts "Один корінь: x = #{x}"
    else
      puts "Дійсних коренів немає"
    end
  end

  def info
    puts "Рівняння: #{@a}x^2 + #{@b}x + #{@c} = 0"
    puts "Дискримінант: #{discriminant}"
    roots
  end
end

eq1 = QuadraticEquation.new(1, -5, 6)
eq2 = QuadraticEquation.new(1, -4, 4)
eq3 = QuadraticEquation.new(1, 2, 5)

puts "Перше рівняння:"
eq1.info

puts "\nДруге рівняння:"
eq2.info

puts "\nТретє рівняння:"
eq3.info
