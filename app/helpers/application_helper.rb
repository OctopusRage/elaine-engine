module ApplicationHelper
  def self.get_module_name_of(which_module, which_def)
    module_name = which_module.class.name.gsub("::", ".")
    def_name = which_def.to_s
    return module_name.concat(".").concat(def_name)
  end 
end
