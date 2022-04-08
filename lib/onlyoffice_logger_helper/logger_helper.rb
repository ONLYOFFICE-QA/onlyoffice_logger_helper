# frozen_string_literal: true

# Module for output stuff in console
module OnlyofficeLoggerHelper
  # Green color code
  GREEN_COLOR_CODE = 32
  # Red color code
  RED_COLOR_CODE = 31

  # Output log entry to terminal
  # @param entry [String] line to output
  # @param color_code [Integer] code of color
  def self.log(entry, color_code = nil)
    caller_name = caller(1..1).first.to_s[/\w+.rb/].chomp('.rb')
    time_stamp = Time.now.strftime('%T/%d.%m.%y')
    message = "#{time_stamp}    [#{caller_name}] #{entry}"
    color_code ? puts(colorize(message, color_code)) : puts(message)
  end

  # Add color code to text
  # @param text [String] text to add color
  # @param color_code [Integer] code of color
  def self.colorize(text, color_code)
    "\e[#{color_code}m#{text}\e[0m"
  end

  # Colorize log in green
  # @param entry [String] line to output
  # @return [void]
  def self.green_log(entry)
    log(entry, GREEN_COLOR_CODE)
  end

  # Colorize log in red
  # @param entry [String] line to output
  # @return [void]
  def self.red_log(entry)
    log(entry, RED_COLOR_CODE)
  end

  # Sleep for some time and output log
  # @param [String] reason message to output
  # @param [Integer] seconds time to sleep
  # @return [void]
  def self.sleep_and_log(reason, seconds)
    log("Start sleeping for #{seconds} seconds because of `#{reason}`")
    sleep(seconds)
    log("Stopped sleeping for #{seconds} seconds because of `#{reason}`")
  end
end
