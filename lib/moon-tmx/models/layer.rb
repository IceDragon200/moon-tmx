require 'data_model/load'
require 'moon-boolean/boolean'
require 'moon-tmx/models/object'

module TMX
  # TMX Map Layer model
  class Layer < Moon::DataModel::Metal
    # @!attribute x
    #   @return [Integer]
    field :x,       type: Integer, default: 0
    # @!attribute y
    #   @return [Integer]
    field :y,       type: Integer, default: 0
    # @!attribute width
    #   @return [Integer]
    field :width,   type: Integer, default: 0
    # @!attribute height
    #   @return [Integer]
    field :height,  type: Integer, default: 0
    # @!attribute name
    #   @return [String]
    field :name,    type: String,  default: ''
    # @!attribute type
    #   @return [String]
    field :type,    type: String,  default: ''
    # @!attribute draworder
    #   @return [String]
    field :draworder,    type: String,  default: 'topdown'
    # @!attribute data
    #   @return [Array<Integer>]
    array :data,    type: Integer, allow_nil: true
    # @!attribute object
    #   @return [Array<TMX::Object>]
    array :objects, type: TMX::Object, allow_nil: true, coerce_values: true
    # @!attribute visible
    #   @return [Boolean]
    field :visible, type: Boolean, default: true
    # @!attribute opacity
    #   @return [Numeric]
    field :opacity, type: Numeric, default: 1

    # Is this layer a tilelayer?
    #
    # @return [Boolean]
    def tilelayer?
      type == 'tilelayer'
    end
  end
end
