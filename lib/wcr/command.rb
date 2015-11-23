module WCR
  class Command
    def initialize
      @paths, @options = ::WCR::ArgumentsParser.new.parse

      if @options.include? :version
        puts @options[:version]
        exit(1)
      end

      @command = `wc #{@options[:command_opts]} #{"\`find #{@paths || '.'} -type f #{@options[:hidden_files]}\`"}`
      @command = @command.split('\n').grep(/^[^\.]/)
    end

    def wcr
      @command.each {|line| puts line.chomp }
    end
  end
end