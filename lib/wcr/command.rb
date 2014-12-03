require 'wcr/arguments_parser'

module WordCountRecursive
  class Command
    def initialize
      @paths, @options = ::WordCountRecursive::ArgumentsParser.new.parse
      @command = `wc #{@options[:command_opts]} #{"\`find #{@paths || '.'} -type f #{@options[:hidden_files]}\`"}`
      @command = @command.split('\n').grep(/^[^\.]/)
    end

    def wcr
      @command.each {|line| puts line.chomp }
    end
  end
end