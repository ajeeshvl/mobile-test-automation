require_relative "./views"
class Button < Views
  def initialize(uiquery)
    super(uiquery)
    @element_type = "Button"
  end
end