FactoryGirl.define do
  factory(:tweet) do
    comment('frank')
    user_id(1)
  end

  factory(:user) do
    id(1)
    email('frank@aol.com')
    password('portland')
  end

end
