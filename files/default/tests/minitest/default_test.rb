require 'minitest/spec'

describe_recipe 'tinyproxy::default' do

  describe 'files and dirs' do
    it 'creates the configuration file' do
      assert_directory '/etc/tinyproxy', 'root', 'root', 0755
      assert_file '/etc/tinyproxy/tinyproxy.conf', 'root', 'root', 0644
    end
  end

  describe 'packages' do
    it 'installs tinyproxy' do
      package('tinyproxy').must_be_installed
    end
  end

  describe 'services' do
    it 'starts and enables tinyproxy' do
      service('tinyproxy').must_be_running
      service('tinyproxy').must_be_enabled
    end
  end

end
