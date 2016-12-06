require_relative "./views"

class TextField < Views
  ELEMENT_EDITTEXT        		 ||= "EditText"
  ELEMENT_TINTEDITTEXT    		 ||= "TintEditText"
  ELEMENT_MATERIALEDITTEXT 		 ||= "MaterialEditText"
  ELEMENT_BACKPRESSAWAREEDITTEXT   ||= "BackPressAwareEditText"
  ELEMENT_APPCOMPATEDITTEXT        ||= "AppCompatEditText"
  ELEMENT_NORDSTROMEDITTEXT ||= "NordstromEditText"
  def initialize(uiquery)
    super
    @element_type = "Text Field"
   end

  def hulu_type_field(text)
      uiquery = query_view(getviews,@identifier)
      #enter_text(@identifier,text)
      enter_text(uiquery,text)
  end
  def getviews
    textfield_views = [ELEMENT_EDITTEXT, ELEMENT_TINTEDITTEXT, ELEMENT_MATERIALEDITTEXT, ELEMENT_BACKPRESSAWAREEDITTEXT, ELEMENT_APPCOMPATEDITTEXT, ELEMENT_NORDSTROMEDITTEXT]
    return textfield_views
  end
end