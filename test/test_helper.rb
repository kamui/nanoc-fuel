require 'nanoc-fuel'
require 'minitest/autorun'
require 'nanoc'

def compact(string)
  compact_string = ''
  string.each_line {|l| compact_string << l.strip }
  compact_string
end