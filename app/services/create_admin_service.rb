class CreateAdminService
  def call
    User.find_or_create_by!(email: 'admin@vadepatins.com.br',
                            name: 'Admin Master') do |user|
      user.password = '123123123'
      user.password_confirmation = '123123123'
      user.admin!
    end
  end
end
