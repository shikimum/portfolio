class UserDecorator < Draper::Decorator
  delegate_all

    def users_name
      "#{object.users_name}"
    end
end
