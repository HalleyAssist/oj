
module Oj
  class RawString
    def initialize(raw)
      @raw = raw
    end
    def to_json
      @raw
    end
  end
end

begin
  # This require exists to get around Rubinius failing to load bigdecimal from
  # the C extension.
  require 'bigdecimal'
rescue Exception
  # ignore
end

require 'oj/version'
require 'oj/bag'
require 'oj/easy_hash'
require 'oj/error'
require 'oj/mimic'
require 'oj/saj'
require 'oj/schandler'

require 'oj/oj' # C extension
