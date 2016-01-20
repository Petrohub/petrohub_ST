class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  enum role: [:pending, :retailer, :supplier ]



def active_for_authentication?
   super && approved?
end

def inactive_message
  if !approved?
    :not_approved
  else
    super
  end
end

def generate_account_number
    rand_num = rand(6**6).to_s + rand(10).to_s
    if self.admin?
      self.account_number = "EGYPT" + rand_num
    elsif self.retailer?
      self.account_number = "NJRET" + rand_num
    elsif self.supplier?
      self.account_number = "NJSUP" + rand_num
    else
      self.account_number = 0
    end
end



end
