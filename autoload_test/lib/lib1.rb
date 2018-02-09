require_relative "lib1/some_class.rb"

class Lib1
  def self.do
    self.new().do
  end

  def initialize()
    #
  end

  def do
    SomeClass.do
  end
end
