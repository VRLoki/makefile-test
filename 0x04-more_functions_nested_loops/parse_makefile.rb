#!/usr/bin/env ruby

###
# Usage: ./parse_makefile path
###

file = File.open(ARGV.shift)
makefile_lines = file.readlines.map(&:chomp)
parsed_lines = []

is_comment = false
makefile_lines.each do |line|
  if is_comment
    is_comment = !(line =~ %r{\\$}).nil?
    next
  end

  if line =~ %r{#}
    is_comment = !(line =~ %r{\\$}).nil?
    line.gsub!(%r{#.*}, '')
    next if line.strip.empty?
  end

  next if line =~ %r{^\s*\.PHONY}

  parsed_lines << line
end

puts parsed_lines.join("\n")
