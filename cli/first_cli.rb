require 'optparse'

# https://ruby-doc.org/stdlib-2.4.2/libdoc/optparse/rdoc/OptionParser.html

# default values
@options = {
    verbose: false
}

required_opts = [:color]

OptionParser.new do |opts|
  opts.banner = "Usage: first_cli.rb -v -c red -n 1234"

  opts.on("-v", "--verbose", "verbose logging") do  # boolean flag
    @options[:verbose] = true
  end
  opts.on("--color COLOR", [:yellow, :red, :blue], "specify color") do |v|  # options with limited choices
    @options[:color] = v
  end
  opts.on("--color-list COLOR_LIST", Array, "specify list of colors") do |v| # specify list
    @options[:color_list] = v
  end
  opts.on("--number NUMBER", Integer, "specify number") do |v|
    @options[:number] = v
  end
end.parse!

# check required fields
required_opts.each do |opt|
    if @options.has_key?(opt)
        next
    else
        raise OptionParser::ParseError.new("#{opt} is a required field")
    end
end

p "@options[:verbose]: #{@options[:verbose]}"
p "@options[:color]: #{@options[:color]}"
p "@options[:color_list]: #{@options[:color_list]}"
p "@options[:number]: #{@options[:number]}"