class Views
  include Calabash::Android::Operations
  attr_accessor :identifier, :element_type

  def initialize(uiquery)
    @identifier = uiquery
    @element_type = ""
  end

  def hulutouch(dynamicidentifier=nil)
    if(dynamicidentifier.nil?)
      uiquery = query_view(getviews,@identifier)
    else
      uiquery = query_view(getviews,dynamicidentifier)
    end
    tap_when_element_exists uiquery
  end

  def exists?()
     uiquery = query_view(getviews,@identifier)
     if(uiquery.nil?)
       screenshot_and_raise "There is no object found for element type: "+element_type+ " element: "+@identifier+" Views: "+getviews
     end
  end

  def query_view(views, mark_id)
    views.each do |view_class|
      mark = escape_quotes(mark_id)
      view = escape_quotes(view_class)
      mark_query = "#{view} id:'#{mark}'"
      return mark_query if element_exists mark_query
      content_description_query = "#{view} contentDescription:'#{mark}'"
      return content_description_query if element_exists content_description_query
      index_query = "#{view} index:'#{mark}'"
      return index_query if element_exists index_query
      text_query = "#{view} text:'#{mark}'"
      return text_query if element_exists text_query
    end
    return nil
  end
end