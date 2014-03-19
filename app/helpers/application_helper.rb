module ApplicationHelper

  def nav_link(link_text, link_path, options = {})
    class_name = current_page?(link_path) ? ' active item' : 'item'

    options[:class] ||= ''
    options[:class] += class_name

    text = ''
    text += "<i class='icon #{options[:icon]}'></i>" if options[:icon]
    text += link_text

    link_to text.html_safe, link_path, options
  end

  def semantic_select(name, resource = nil, choices = [], options = {})
    options = { default: 'Select' }.merge(options)
    render 'semantic/select', name: name, resource: resource, choices: choices, options: options
  end

end