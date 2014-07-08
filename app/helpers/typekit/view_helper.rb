module Typekit
  module ViewHelper
    def typekit(kit_id)
      return if kit_id == '- YOUR KIT ID HERE -'
      content_tag :script, nil, src: "//use.typekit.com/#{kit_id}.js", async: true
    end
  end
end
