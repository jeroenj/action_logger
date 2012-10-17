module ActionLogsHelper
  def log_action sender, action, source, ip = request.try(:remote_ip), data = params, admin_id = try(:current_admin_user)
    ActionLog.log sender, action, source, ip, data, admin_id
  end
end
