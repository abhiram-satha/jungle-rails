RSpec.describe User, type: :model do
  describe 'Validations' do
    it "password and password confirmation do not match" do
      @user = User.create(:name => 'Abhirm', :email=>"test@test.com", :password=> "12345", :password_confirmation=>"123456" )
      # p @user.errors
      expect(@user.errors.full_messages).to be_present
    end

    it "email should be unique and is not case sensitive" do
      @user = User.create(:name => 'Abhirm', :email=>"test@test.com", :password=> "123456", :password_confirmation=>"123456" )
      @user2 = User.create(:name => 'Abhiram', :email=>"test@test.COM", :password=> "123456", :password_confirmation=>"123456" )
      # p @user2.errors
      expect(@user2.errors.full_messages).to be_present
    end

    it "email, and name should be required" do
      @user = User.create(:name => nil, :email=> nil, :password=> "123456", :password_confirmation=>"123456" )
      
      # p @user.errors
      expect(@user.errors.full_messages).to be_present
    end
  end

  describe 'Password validations' do
    it 'password length should be greater than 5 characters' do
      @user = User.create(:name => 'Abhiram', :email=>"test@test.com", :password=> "1234", :password_confirmation=>"1234" )
      
      # p @user.errors
      expect(@user.errors.full_messages).to be_present
    end
  end
  describe '.authenticate_with_credentials' do
    it 'logging in the user' do
      user = User.new(name: 'Abhiram', email: "t@test.com", password: "12345", password_confirmation: "12345" )
      user.save
      login = User.authenticate_with_credentials("t@test.com", "12345")
      expect(login).not_to be_nil
      # expect(login).to be_instance_of(User)
    end
  end
end