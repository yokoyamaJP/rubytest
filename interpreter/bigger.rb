require "find"
require "./expression.rb"

class Bigger < Expression
  def initialize(size)
    @size = size
  end

  def evaluate(dir)
    results = []
    Find.find(dir) do |path|
      next unless File.file?(path)
      results << path if File.size(path) > @size
    end
    results
  end
end
