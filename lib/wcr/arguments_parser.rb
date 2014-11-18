
require 'optparse'

module WordCountRecursive
  class ArgumentsParser
    def parse
      options = {command_opts: ""}

      o = ::OptionParser.new do |opts|
        opts.banner = "usage: wc [-clmw] [file ...]"
        
        opts.on("-c") do |c|
          options[:command_opts] += " -c"
        end

        opts.on("-l") do |l|
          options[:command_opts] += " -l"
        end

        opts.on("-m") do |m|
          options[:command_opts] += " -m"
        end

        opts.on("-w") do |w|
          options[:command_opts] += " -w"
        end
      end
    begin
      o.parse!
    rescue ::OptionParser::InvalidOption => e
      $stderr.puts e
      $stderr.puts o.banner
      exit
    end
      [ARGV.join(' '), options]
    end
  end
end
