module LinkToWithCurrent
  def link_to_with_current(text, target, attributes = {})
    path = target.is_a?(String) ? target : target.path
    if @item_rep && @item_rep.path == path
      attributes[:class] ||= ""
      attributes[:class]  += " active"
    end
    link_to(text, target, attributes)
  end
end
