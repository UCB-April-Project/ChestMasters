# Rakefile for rake        -*- ruby -*-
# Copyright 2003, 2004, 2005 by Jim Weirich (jim@weirichhouse.org)
# All rights reserved.
# This file may be distributed under an MIT style license.  See
# MIT-LICENSE for details.
require "rake"
require "rspec/core/rake_task"
RSpec::Core::RakeTask.new(:spec) do |t|
  t.pattern = Dir.glob("spec/**/*_spec.rb")
  t.rspec_opts = "--format documentation"
end