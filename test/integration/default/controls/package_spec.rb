control 'Timezone package' do
  title 'should be installed'

  describe package('tzdata') do
    it { should be_installed }
  end
end
