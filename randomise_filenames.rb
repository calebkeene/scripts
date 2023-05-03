require 'securerandom'
require 'fileutils'

# path = ARGV[0]

# FileUtils.chdir(path)

Dir.entries(Dir.pwd).select { |entry| %w(.jpg .tif).include?(File.extname(entry)) }.each do |filename|
  FileUtils.mv(filename, "#{Dir.pwd}/#{SecureRandom.hex(8)}.jpg")
end