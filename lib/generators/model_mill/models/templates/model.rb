class <%= options[:namespace] ? options[:namespace].camelize + '::' : '' %><%= @model_name %> < <%= options[:namespace] ? options[:namespace].camelize : 'ActiveRecord' %>::Base
<% @associations.each do |cardinality, associations|
  -%><% associations.each do |a|
  -%><%= "  #{cardinality} :#{a[:name]}" +
         (options[:namespace] ? ", :class_name => '#{options[:namespace].camelize}::#{a[:name].singularize.camelize}'" : '')
  %>
<% end %><% end %>
end

