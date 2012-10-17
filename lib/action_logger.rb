require 'action_logger/version'
require 'action_logger/engine'

module ActionLogger
  def self.log sender, action, source, ip = nil, data = {}, admin_id = nil
    ActionLog.log sender, action, source, ip, data, admin_id
  end
end
