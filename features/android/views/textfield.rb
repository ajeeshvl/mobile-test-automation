require_relative "./views"

class TextField < Views

  def initialize(uiquery)
    super
    @element_type = "Text Field"
   end
  def hulu_type_field(text)
     enter_text(@identifier,text)
   end
end