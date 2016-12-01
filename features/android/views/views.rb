class Views
  include Calabash::Android::Operations
  attr_accessor :identifier, :element_type

  def initialize(uiquery)
    @identifier = uiquery
    @element_type = ""
  end

  def hulutouch()
    touch @identifier
  end
end