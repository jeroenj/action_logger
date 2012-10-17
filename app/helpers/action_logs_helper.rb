module ActionLogsHelper
  def log_action action, source, attrs = {}
    ActionLogger.log action, source, attrs
  end
end
