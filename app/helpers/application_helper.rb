# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  def main_menu(active)
      menu = []
      menu << {:name => "Questions", :id => "questions", :link => questions_path}
      menu << {:name => "Tags", :id => "tags", :link => tags_path}
      content_for :main_menu, build_menu(menu, active)
  end
  
  def build_menu(menu, active)
      li = ""
      menu.each do |m|
        class_name = (m[:id]==active.to_s)? 'active' : ''
        li +=content_tag(:li, link_to(m[:name], m[:link]), :class => class_name)
      end
      content_tag(:ul, li)
    end
  
end
