class Home < SitePrism::Page
    element :message, '.navUser span[wicketpath="profile-link_name"]'

    def logged_user
      message.text
    end
end