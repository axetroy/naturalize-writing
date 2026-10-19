require "yaml"

def fail_validation(message)
  warn "Skill validation failed: #{message}"
  exit 1
end

skill_path = "SKILL.md"
unless File.file?(skill_path)
  fail_validation("#{skill_path} is missing")
end

lines = File.readlines(skill_path, chomp: true)
unless lines.first == "---"
  fail_validation("#{skill_path} must start with YAML frontmatter")
end

closing_delimiter = lines.each_index.find { |index| index.positive? && lines[index] == "---" }
unless closing_delimiter
  fail_validation("#{skill_path} is missing the closing frontmatter delimiter")
end

begin
  metadata = YAML.safe_load(lines[1...closing_delimiter].join("\n"), aliases: false)
rescue Psych::Exception => error
  fail_validation("invalid YAML frontmatter: #{error.message}")
end

unless metadata.is_a?(Hash)
  fail_validation("frontmatter must be a YAML mapping")
end

name = metadata["name"]
unless name.is_a?(String) && name.match?(/\A[a-z0-9]+(?:-[a-z0-9]+)*\z/) && name.length <= 64
  fail_validation("name must be lowercase kebab-case and no longer than 64 characters")
end

description = metadata["description"]
unless description.is_a?(String) && !description.strip.empty? && description.length <= 1024
  fail_validation("description must be a non-empty string no longer than 1024 characters")
end

%w[README.md README.zh-CN.md].each do |readme_path|
  unless File.file?(readme_path)
    fail_validation("#{readme_path} is missing")
  end

  content = File.read(readme_path)
  content.scan(/\[[^\]]+\]\(([^)]+)\)/).flatten.each do |destination|
    destination = destination.delete_prefix("<").delete_suffix(">")
    path = destination.split(/[?#]/, 2).first
    next if path.nil? || path.empty? || path.start_with?("//") || path.match?(/\A[a-z][a-z0-9+.-]*:/i)

    unless File.file?(File.expand_path(path, File.dirname(readme_path)))
      fail_validation("#{readme_path} links to missing file: #{path}")
    end
  end
end

puts "Agent Skill metadata and README links are valid."
