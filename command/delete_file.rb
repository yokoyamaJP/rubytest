require "fileutils"
require "./command.rb"

class DeleteFile < Command
  def initialize(path)
    super("Delete file : #{path}")
    @path = path
  end

  def execute
    if File.exists?(@path)
      @content = File.read(@path)
    end
    File.delete(@path)
  end

  def undo_execute
    f = File.open(@path, "w")
    f.write(@contents)
    f.close
  end
end
