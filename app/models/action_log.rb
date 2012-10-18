class ActionLog < ActiveRecord::Base
  belongs_to :sender, polymorphic: true
  serialize :data

  def self.log action, source, sender = nil, ip = nil, data = {}, admin_id = nil
    create! action: action, source: source, sender: sender, ip: ip, data: data, admin_id: (admin_id.present? && admin_id.respond_to?(:id) ? admin_id.id : admin_id)
  end
end
