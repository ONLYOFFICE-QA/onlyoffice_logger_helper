require 'logger'
module OnlyofficeLoggerHelper
  # Class for output stuff to stdout
  class LoggerHelper
    def self.logger
      return @logger unless @logger.nil?
      @logger = Logger.new(STDOUT)
      @logger.formatter = proc do |_severity, datetime, _progname, msg|
        "#{datetime.strftime('%T/%d.%m.%y')}: #{msg}\n"
      end
      @logger
    end

    def self.print_to_log(string, color_code = nil)
      message = '[' + caller[0].to_s[/\w+.rb/].chomp('.rb') + '] ' + string
      color_code ? logger.info(colorize(message, color_code)) : (logger.info message)
    end

    def self.colorize(text, color_code)
      "\e[#{color_code}m#{text}\e[0m"
    end
  end
end
