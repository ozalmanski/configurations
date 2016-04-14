#!/usr/bin/env /opt/chef/embedded/bin/ruby

# Load ohai to get system information
begin
  require 'ohai'
rescue LoadError
  exit(0)
end
Ohai::Config[:plugin_path] << '/opt/ohai_plugins'
Ohai::Log.level = :error # Do not spam user with deprecation warnings
ohai = Ohai::System.new
ohai.load_plugins

%w{os platform hostname monsoon}.each do |plugin|
  begin
    ohai.require_plugin plugin
  rescue Ohai::Exceptions::DependencyNotFound
  end
end

# Default to an empty hash if the monsoon facts couldn't be loaded
facts = ohai.data[:monsoon][:instance] rescue Hash.new

printf "export MONSOON_NAME=\"%s\"\n", facts.fetch('name', 'unknown')
printf "export MONSOON_ORGANIZATION=\"%s\"\n", facts.fetch('organization', 'unknown')
printf "export MONSOON_PROJECT=\"%s\"\n", facts.fetch('project', 'unknown')
