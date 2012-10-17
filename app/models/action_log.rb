class ActionLog < ActiveRecord::Base
  serialize :data

  def self.log sender, action, source, ip = nil, data = {}, admin_id = nil
    log = create! sender_id: sender.try(:id), sender_type: sender.try(:class).try(:name), source: source, ip: ip, data: data, admin_id: (admin_id.present? && admin_id.respond_to?(:id) ? admin_id.id : admin_id)
    Rails.logger.info log.inspect
  end
end
