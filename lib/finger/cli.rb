require 'octopi'

module Finger
  class CLI
    class << self
      def run
        case arguments.first
        when /^(?:-g|--github)$/
          usernames do |username|
            user = Octopi::User.find(username)
            rows = []
            rows << [
              "Login: #{user.login}",
              "Name: #{user.name}"
            ]
            rows << [
              "Blog: #{user.blog}",
              "Company: #{user.company}"
            ]
            rows << ["#{user.public_repo_count} public repos"]
            rows << ["#{user.followers.count} followers"]
            rows.each do |row|
              row.each do |col|
                print col.ljust(40)
              end
              print "\n"
            end
          end
        else
          exec "`whereis finger` #{ARGV.join(" ")}"
        end
      end

      private

      def arguments
        ARGV
      end

      def usernames
        arguments.drop(1).each { |user| yield user }
      end
    end
  end
end
