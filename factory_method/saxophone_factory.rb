require "./instrument_factory.rb"
require "./saxophone.rb"

class SaxophoneFactory < InstrumentFactory
  def new_instrument(name)
    Saxophone.new(name)
  end
end
