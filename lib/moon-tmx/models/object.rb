require 'data_model/load'
require 'moon-boolean/boolean'

module TMX
  # TMX Object model
  class Object < Moon::DataModel::Metal
    # @!attribute id
    #   @return [Integer]
    field :id,        type: Integer, default: 0
    # @!attribute x
    #   @return [Integer]
    field :x,         type: Integer, default: 0
    # @!attribute y
    #   @return [Integer]
    field :y,         type: Integer, default: 0
    # @!attribute width
    #   @return [Integer]
    field :width,     type: Integer, default: 0
    # @!attribute height
    #   @return [Integer]
    field :height,    type: Integer, default: 0
    # @!attribute rotation
    #   @return [Integer]
    field :rotation,  type: Integer, default: 0
    # @!attribute name
    #   @return [String]
    field :name,      type: String,  default: ''
    # @!attribute type
    #   @return [String]
    field :type,      type: String,  default: ''
    # @!attribute properties
    #   @return [Hash<String, String>]
    dict :properties, key:  String,  value: String
    # @!attribute visible
    #   @return [Boolean]
    field :visible,   type: Boolean, default: true
  end
end
