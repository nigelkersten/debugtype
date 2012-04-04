Puppet::Type.newtype(:debugtype) do

  @doc = "Debug Type that is always out of sync for testing autoloading/discovery"

  ensurable

  newparam(:name) do
    desc "name"
    isnamevar
  end

  newproperty(:message) do
    desc "message"
    defaultto { @resource[:name] }
  end

end
