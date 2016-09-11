# frozen_string_literal: true

module Socketry
  # Generic catch all for all Socketry errors
  Error = Class.new(::IOError)

  # Invalid address
  AddressError = Class.new(Socketry::Error)

  # Timeouts performing an I/O operation
  TimeoutError = Class.new(Socketry::Error)

  # Cannot perform operation in current state
  StateError = Class.new(Socketry::Error)

  module Resolver
    # DNS resolution errors
    Error = Class.new(Socketry::AddressError)
  end

  module SSL
    # Errors related to SSL
    Error = Class.new(Socketry::Error)

    # Hostname verification error
    HostnameError = Class.new(Socketry::SSL::Error)
  end
end