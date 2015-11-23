require 'optparse'

module WCR
  class ArgumentsParser
    def parse
      options = {command_opts: "", hidden_files: "| grep -v '/\\.'"}

      o = ::OptionParser.new do |opts|
        opts.banner = "usage: wc [-clhmw] [file ...]"
        
        opts.on("-c") do |c|
          options[:command_opts] += " -c"
        end

        opts.on("-h") do |h|
          options[:hidden_files] = ""
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

        opts.on("-v", "--version") do |v|
          options[:version] = "wcr - v#{::WCR::VERSION}"
        end
      end
    begin
      o.parse!
    rescue ::OptionParser::InvalidOption => e
      $stderr.puts e
      $stderr.puts o.banner
      exit
    end
    # TODO: ugly code to refactor :(
      [(ARGV.length > 0 ? ARGV.join(' ') : nil), options]
    end
  end
end
