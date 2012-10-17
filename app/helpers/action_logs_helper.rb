module ActionLogsHelper
  def log_action action, source, attrs = {}
    attrs[:sender] || try(:current_user)
    attrs[:ip] || request.try(:remote_ip)
    attrs[:data] || params
    attrs[:admin_id] || try(:current_admin_user)

    ActionLogger.log action, source, attrs
  end
end
