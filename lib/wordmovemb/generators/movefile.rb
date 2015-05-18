require 'thor/group'
require 'wordmovemb/generators/movefile_adapter'

module Wordmovemb
  module Generators
    class Movefile < Thor::Group
      include Thor::Actions
      include MovefileAdapter

      def self.source_root
        File.dirname(__FILE__)
      end

      def copy_movefile
        template "Movefile"
      end

    end
  end
end

