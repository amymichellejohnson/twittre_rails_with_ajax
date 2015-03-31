FactoryGirl.define do
  factory(:user) do
    DatabaseCleaner.clean
    email('some_person@somewebsite.com')
    password('qwertyui')
    password_confirmation('qwertyui')
  end

end
