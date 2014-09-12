class Contact < ActiveRecord::Base
  belongs_to :agent

  delegate :name, to: :agent, prefix: true
end
