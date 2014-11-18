require 'wcr/arguments_parser'

module WordCountRecursive
  class Command
    def initialize
      @paths, @options = ::WordCountRecursive::ArgumentsParser.new.parse
      @command = `wc #{@options[:command_opts]} #{"\`find #{@paths || '.'} -type f\`"}`
    end

    def wcr
      @command.each_line {|line| puts line.chomp }
    end
  end
end