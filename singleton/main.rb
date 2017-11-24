require "./singleton_object"

obj1 = SingletonObject.instance
obj1.counter += 1
puts(obj1.counter)

obj2 = SingletonObject.instance
obj2.counter += 1
puts(obj2.counter)

# 以下は失敗する
obj3 = SingletonObject.new
