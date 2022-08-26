puts "def print(n); puts n; end"
ARGF.each_line do |line|
  puts line
    .gsub(/let (.+) = do \|(.*)\|/, "def \\1(\\2)")
    .gsub(/let (.+) = do/, "def \\1")
    .gsub(/if (.+) do/, "if \\1")
    .gsub(/let (.+?)=/, "\\1=") # FIXME
end
