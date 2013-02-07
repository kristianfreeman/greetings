module Rails
  module Moshimoshi
    module Helper
      def moshimoshi_tag
        greetings = YAML.load_file(File.join(File.dirname(__FILE__),"greetings.yml"))
        return greetings.sample
      end
    end
  end
end
