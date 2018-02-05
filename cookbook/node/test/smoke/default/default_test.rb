# # encoding: utf-8

# Inspec test for recipe node::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

# unless os.windows?
#   # This is an example test, replace with your own test.
#   describe user('root'), :skip do
#     it { should exist }
#   end
# end

# Install nginx
describe package('nginx') do
	it {should be_installed}
end

describe service('nginx') do
	it {should be_running}
	it {should be_enabled}
end

# Install Nodejs
describe package('nodejs') do
	it {should be_installed}
	its('version') { should match /6\../}
end

describe port(80) do
  it { should be_listening }
end