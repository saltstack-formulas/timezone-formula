# frozen_string_literal: true

control 'Timezone package' do
  title 'should be installed'

  package_name =
    case os[:family]
    when 'suse'
      'timezone'
    else
      'tzdata'
    end

  describe package(package_name) do
    it { should be_installed }
  end
end
