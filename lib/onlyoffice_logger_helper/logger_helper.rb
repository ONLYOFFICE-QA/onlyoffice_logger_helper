require 'logger'
module OnlyofficeLoggerHelper
  # Class for output stuff to stdout
  class LoggerHelper
    def self.print_to_log(entry, color_code = nil)
      caller_name = caller[0].to_s[/\w+.rb/].chomp('.rb')
      message = "#{Time.now.strftime('%T/%d.%m.%y')}    [#{caller_name}] #{entry}"
      color_code ? puts(colorize(message, color_code)) : puts(message)
    end

    def self.colorize(text, color_code)
      "\e[#{color_code}m#{text}\e[0m"
    end
  end
end
