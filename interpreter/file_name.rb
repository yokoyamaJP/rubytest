require "find"
require "./expression.rb"

class FileName < Expression
  def initialize(pattern)
    @pattern = pattern
  end

  def evaluate(dir)
    results = []
    Find.find(dir) do |path|
      next unless File.file?(path)
      name = File.basename(path)
      results << path if File.fnmatch(@pattern, name)
    end
    results
  end
end
