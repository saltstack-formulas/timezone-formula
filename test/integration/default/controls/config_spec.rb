# frozen_string_literal: true

control 'Timezone configuration' do
  title 'should match desired lines'

  def test_file_content(config_file)
    describe file(config_file) do
      its('content') { should include 'Europe/Paris' }
    end
  end

  def test_symlink(config_file)
    describe file(config_file) do
      its('link_path') { should eq '/usr/share/zoneinfo/Europe/Paris' }
    end
  end

  case os[:family]
  when 'debian'
    test_file_content('/etc/timezone')
  else
    test_symlink('/etc/localtime')
  end
end
