require "./instrument_factory.rb"
require "./trumpet.rb"

class TrumpetFactory < InstrumentFactory
  def new_instrument(name)
    Trumpet.new(name)
  end
end
