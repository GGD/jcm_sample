class Agent < ActiveRecord::Base
  before_create :assign_contact

  has_many :contacts, dependent: :destroy

  def default_contact
    contacts.first
  end

  private

  def assign_contact
    contacts.build(county: 'Taipei')
  end
end
