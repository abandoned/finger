module Finger
  class CLI
    class << self
      def run
        case ARGV[0]
        when 'foo'
        else
          exec "`whereis finger` #{ARGV.join(" ")}"
        end
      end
    end
  end
end
