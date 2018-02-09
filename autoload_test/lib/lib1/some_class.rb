class Lib1
  class SomeClass
    def self.do
      self.new().do
    end

    def initialize()
      #
    end

    def do
      p "done"
    end
  end
end
