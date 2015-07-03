require "blueprint/io/version"

module Blueprint
  module Io
    def self.load_commands
      Brief.load_commands()
      Datapimp::Cli.load_commands()
    end
  end
end
