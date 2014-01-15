require 'syslog/logger'
require 'syslog/logger/facilitated/version'

class Syslog::Logger
  # Syslog::Logger patched to support #<< and setting facility.
  # Drop-in replacement.
  class Facilitated < Syslog::Logger
    def initialize program_name = 'ruby', facility = Syslog::LOG_USER
      @level = ::Logger::DEBUG
      @formatter = Formatter.new

      Syslog::Logger.syslog =
          Syslog.open(program_name, Syslog::LOG_ODELAY | Syslog::LOG_CONS, facility)
    end

    alias_method :<<, :info
  end
end
