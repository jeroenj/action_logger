require 'action_logger/version'
require 'action_logger/engine'

module ActionLogger
  def self.log action, source, attrs = {}
    attrs[:sender] || try(:current_user)
    attrs[:ip] || request.try(:remote_ip)
    attrs[:data] || params
    attrs[:admin_id] || try(:current_admin_user)

    ActionLog.log action, source, attrs[:semder], attrs[:ip], attrs[:data], attrs[:admin_id]
  end
end
