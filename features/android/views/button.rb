require_relative "./views"
class Button < Views
  ELEMENT_BUTTON            ||= "Button"
  ELEMENT_TINTBUTTON        ||= "TintButton"
  ELEMENT_ITEMVIEW          ||= "ActionMenuItemView"
  ELEMENT_IMAGEBUTTON       ||= "ImageButton"
  ELEMENT_FLOATINGBUTTON    ||= "FloatingActionButton"
  ELEMENT_APPCOMPATBUTTON   ||= "AppCompatButton"
  ELEMENT_ENABLEAWAREBUTTON ||= "EnableAwareButton"
  ELEMENT_RADIOBUTTON       ||= "RadioButton"
  ELEMENT_OVERFLOWBUTON     ||= "OverflowMenuButton"
  ELEMENT_COMPATRADIOBUTTON ||= "AppCompatRadioButton"
  ELEMENT_SPINNERBUTTON     ||= "SpinnerButton"
  def initialize(uiquery)
    super(uiquery)
    @element_type = "Button"
  end
  def getviews
    button_views = [ELEMENT_BUTTON, ELEMENT_TINTBUTTON, ELEMENT_ITEMVIEW, ELEMENT_IMAGEBUTTON, ELEMENT_FLOATINGBUTTON, ELEMENT_APPCOMPATBUTTON, ELEMENT_ENABLEAWAREBUTTON, ELEMENT_RADIOBUTTON, ELEMENT_OVERFLOWBUTON, ELEMENT_COMPATRADIOBUTTON,ELEMENT_SPINNERBUTTON]
    return button_views
  end
end