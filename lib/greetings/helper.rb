module Rails
  module Greetings
    module Helper
      def greetings_tag
        greetings = YAML.load_file(File.join(File.dirname(__FILE__),"greetings.yml"))
        return greetings.sample
      end
    end
  end
end
