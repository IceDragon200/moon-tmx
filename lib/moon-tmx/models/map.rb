require 'data_model/load'
require 'moon-tmx/models/layer'
require 'moon-tmx/models/tileset'

module TMX
  # TMX Map model
  class Map < Moon::DataModel::Metal
    # @!attribute version
    #   @return [Integer]
    field :version,     type: Integer, default: 0
    # @!attribute width
    #   @return [Integer]
    field :width,       type: Integer, default: 0
    # @!attribute height
    #   @return [Integer]
    field :height,      type: Integer, default: 0
    # @!attribute tilewidth
    #   @return [Integer]
    field :tilewidth,   type: Integer, default: 0
    # @!attribute tileheight
    #   @return [Integer]
    field :tileheight,  type: Integer, default: 0
    # @!attribute orientation
    #   @return [String]
    field :orientation, type: String,  default: 'orthogonal'
    # @!attribute renderorder
    #   @return [String]
    field :renderorder, type: String,  default: 'right-down'
    # @!attribute nextobjectid
    #   @return [Integer]
    field :nextobjectid, type: Integer, default: 1
    # @!attribute properties
    #   @return [Hash<String, String>]
    dict :properties,   key:  String,  value: String
    # @!attribute layers
    #   @return [Array<TMX::Layer>]
    array :layers,      type: Layer, coerce_values: true
    # @!attribute tilesets
    #   @return [Array<TMX::Tileset>]
    array :tilesets,    type: Tileset, coerce_values: true
  end
end
