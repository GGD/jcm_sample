module ContactsHelper
  def render_contact_chose
    content_tag(:p, "You have chosen #{@contact.agent_name}.") if @contact.present?
  end
end
