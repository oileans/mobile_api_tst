# frozen_string_literal: true

require 'yaml'
require 'logger'

def load_screen(screen, package)
  $platform = ENV['PLATFORM_NAME'].downcase
  dir = "#{Dir.pwd}/features/#{package}/elements/screen_map_#{screen}.yaml"
  screen_map = YAML.load_file(dir)
  @map = screen_map[$platform][screen]
end
