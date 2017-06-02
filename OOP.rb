#!/usr/bin/ruby
# -*- coding:UTF-8 -*-

# 创建类

class Box

  # 构造器方法
  def initialize(w, h)
    @width, @height = w, h
  end

  # 访问器方法
  def getWidth
    @width
  end
  def getHeight
    @height
  end

  # 设置器方法
  def setWidth=(value)
    @width = value
  end

  def setHeight=(value)
    @height = value
  end
end

# 创建对象
box = Box.new(10, 20)

# 使用设置器方法
box.setWidth = 30
box.setHeight = 50

# 使用访问器方法
x = box.getWidth()
y = box.getHeight()

puts "盒子宽度 : #{x}"
puts "盒子高度 : #{y}"

# 类方法 & 类变量

class Box
  # 初始化类变量
  @@count = 0

  def initialize(w, h)
    # 给实例变量赋值
    @width, @height = w, h

    @@count += 1
  end

  # 定义类方法
  def self.printCount()
    puts "Box count is : #@@count"
  end
end

# 创建两个对象
box1 = Box.new(10, 20)
box2 = Box.new(30, 100)

# 调用类方法来输出盒子计数
Box.printCount()


# to_s

class Box
   # 构造器方法
   def initialize(w,h)
      @width, @height = w, h
   end
   # 定义 to_s 方法
   def to_s
      "(w:#@width,h:#@height)"  # 对象的字符串格式
   end
end

# 创建对象
box = Box.new(10, 20)

# 自动调用 to_s 方法
puts "String representation of box is : #{box}"


# 访问控制
class Box
   # 构造器方法
   def initialize(w,h)
      @width, @height = w, h
   end

   # 实例方法默认是 public 的
   def getArea
      getWidth() * getHeight
   end

   # 定义 private 的访问器方法
   def getWidth
      @width
   end
   def getHeight
      @height
   end
   # make them private
   private :getWidth, :getHeight

   # 用于输出面积的实例方法
   def printArea
      @area = getWidth() * getHeight
      puts "Big box area is : #@area"
   end
   # 让实例方法是 protected 的
   protected :printArea
end

# 创建对象
box = Box.new(10, 20)

# 调用实例方法
a = box.getArea()
puts "Area of the box is : #{a}"

# 尝试调用 protected 的实例方法
# box.printArea()

# 继承
class Box
   # 构造器方法
   def initialize(w,h)
      @width, @height = w, h
   end
   # 实例方法
   def getArea
      @width * @height
   end
end

# 定义子类
class BigBox < Box

   # 添加一个新的实例方法
   def printArea
      @area = @width * @height
      puts "Big box area is : #@area"
   end
end

# 创建对象
box = BigBox.new(10, 20)

# 输出面积
box.printArea()

# 方法重载
class Box
   # 构造器方法
   def initialize(w,h)
      @width, @height = w, h
   end
   # 实例方法
   def getArea
      @width * @height
   end
end

# 定义子类
class BigBox < Box

   # 改变已有的 getArea 方法
   def getArea
      @area = @width * @height
      puts "Big box area is... : #@area"
   end
end

# 创建对象
box = BigBox.new(10, 20)

# 使用重载的方法输出面积
box.getArea()

# 运算符重载
class String
    def - str
        self.gsub(str, "")
    end
end
puts "Hello" - "H"

# 冻结对象
box = Box.new(10, 20)

box.freeze
if( box.frozen? )
   puts "Box object is frozen object"
else
   puts "Box object is normal object"
end

# 现在尝试使用设置器方法
# box.setWidth = 30
# box.setHeight = 50


# 类常量

class Box
   BOX_COMPANY = "TATA Inc"
   BOXWEIGHT = 10
   # 构造器方法
   def initialize(w,h)
      @width, @height = w, h
   end
   # 实例方法
   def getArea
      @width * @height
   end
end

# 创建对象
box = Box.new(10, 20)

# 调用实例方法
a = box.getArea()
puts "Area of the box is : #{a}"
puts Box::BOX_COMPANY
puts "Box weight is: #{Box::BOXWEIGHT}"


# allocate 创建未初始化的对象
class Box
   attr_accessor :width, :height

   # 构造器方法
   def initialize(w,h)
      @width, @height = w, h
   end

   # 实例方法
   def getArea
      @width * @height
   end
end

# 使用 new 创建对象
box1 = Box.new(10, 20)

# 使用 allocate 创建两一个对象
box2 = Box.allocate

# 使用 box1 调用实例方法
a = box1.getArea()
puts "Area of the box is : #{a}"

# 使用 box2 调用实例方法
# a = box2.getArea()
puts "Area of the box is : #{a}"

# 类信息
class Test
   # 输出类信息
   puts "Class of self = #{self.class}"
   puts "Name of self = #{self.name}"

   def objGetSelf
      puts self
   end

   def self.getSelf
      puts self
   end
end

Test.getSelf

box = Test.new
box.objGetSelf

# super 方法去使用父类的构造函数

class A
  def initialize(a,b,c)
    puts a,b,c
  end
end

class B < A
  def initialize(a,b,c,d)
    # super 直接写 super 会将 B 的构造方法的参数全传到父类构造方法中
    super(a,b,c)
    puts d
  end
end

b = B.new(1,2,3,4)
