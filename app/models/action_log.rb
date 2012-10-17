class ActionLog < ActiveRecord::Base
  serialize :data

  def self.log action, source, sender = nil, ip = nil, data = {}, admin_id = nil
    create! action: action, source: source, sender_id: sender.try(:id), sender_type: sender.try(:class).try(:name), ip: ip, data: data, admin_id: (admin_id.present? && admin_id.respond_to?(:id) ? admin_id.id : admin_id)
  end
end
