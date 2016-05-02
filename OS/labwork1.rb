#!/bin/ruby

module Labworks
  def labwork1
    file_name = ARGV[0]
    text = gets()
  end
end

labwork = Labworks.new
labwork.labwork1
