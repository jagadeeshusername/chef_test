# example.rb

control 'check-ssh-configuration' do
  impact 1.0
  title 'Ensure SSH configuration is secure'
  desc 'Checks if SSH configuration is secure'
  
  describe sshd_config do
    its('Protocol') { should cmp 2 }
    its('PermitRootLogin') { should_not eq 'yes' }
    its('PasswordAuthentication') { should eq 'no' }
  end
end

