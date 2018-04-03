require "erb"
require "pry"
require "yaml"

root_path = File.expand_path("..", __FILE__)

%w[postgresql nginx].each do |service|
  compose_template = File.join(root_path, service, "docker-compose.yml.erb")
  compose_file     = File.join(root_path, service, "docker-compose.yml")

  File.open(compose_file, "w+") do |file|
    file.write(ERB.new(File.read(compose_template)).result)
  end
end
