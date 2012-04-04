Puppet::Type.type(:debugtype).provide :debugtype, :parent => Puppet::Provider do

  desc "debug type that is always out of sync"

  class << self
    def instances
      return []
    end
  end

  def create
    Puppet.notice "creating"
  end

  def destroy
    Puppet.notice "destroying"
  end

  def exists?
    true
  end

  def message
    ""
  end

  def message=(value)
    "huh"
  end

end
