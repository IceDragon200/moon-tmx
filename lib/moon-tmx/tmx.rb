##
# TMX loader module
module TMX
  # Loads a TMX map from the provided data
  #
  # @param [Hash] data
  # @return [TMX::Map] the loaded map
  def self.load(data)
    Map.new(data)
  end
end
