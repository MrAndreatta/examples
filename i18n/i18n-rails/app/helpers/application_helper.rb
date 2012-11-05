module ApplicationHelper
  
  def link_to_new(url, html_options = {})
    link_to t("new.label"), url, html_options
  end
  
  def link_to_show(url, html_options = {})
    link_to t("show.label"), url, html_options
  end
  
  def link_to_edit(url, html_options = {})
    link_to t("edit.label"), url, html_options
  end
  
  def link_to_destroy(url, html_options = {})
    html_options.reverse_merge!(:confirm => t("destroy.confirm"), :method => :delete)
    link_to t("destroy.label"), url, html_options
  end
  
  def link_to_back(url, html_options = {})
    link_to t("back.label"), url, html_options
  end
  
end
