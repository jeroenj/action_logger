require 'action_logger/version'
require 'action_logger/engine'

module ActionLogger
  def self.log action, source, attrs = {}
    ActionLog.log action, source, attrs[:sender], attrs[:ip], attrs[:data], attrs[:admin_id]
  end
end
