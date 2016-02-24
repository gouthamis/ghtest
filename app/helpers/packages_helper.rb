module PackagesHelper
  def link_to_add_fields(name, f, association)
    obj = f.object.send(association).klass.new
    id = obj.object_id
    fields = f.fields_for(association, obj, child_index: id) do |builder|
      render(association.to_s.singularize + "_fields", f: builder)
    end
    link_to(name, '#', class: "add_fields", data: {id: id, fields: fields.gsub("\n", "")})
  end
  def column_helper
    ["Manufacturer", "Manufacturer Location", "Material", "Box style (FEFCO/ASSCO)code", "Part/Drawing/Spec. number", "BMC"]
  end
end
