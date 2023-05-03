
Dir.entries(Dir.pwd).select { |entry| %w(.jpg .tif).include?(File.extname(entry)) }.each do |filename|
  puts "writing metadata to file: #{filename}"
  `exiftool -overwrite_original -Make="FUJIFILM" -Model="X-T30" -LensMake="FUJIFILM" -Copyright="Copyright © #{Time.now.year}, Caleb Keene" #{filename}`
  puts "done"
end