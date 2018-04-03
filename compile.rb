require "erb"
require "pry"
require "yaml"

root_path = File.expand_path("..", __FILE__)

postgresql_compose_template = File.join(root_path, "postgresql", "docker-compose.yml.erb")
postgresql_docker_compose   = File.join(root_path, "postgresql", "docker-compose.yml")

File.open(postgresql_docker_compose, "w+") do |file|
  file.write(ERB.new(File.read(postgresql_compose_template)).result)
end
