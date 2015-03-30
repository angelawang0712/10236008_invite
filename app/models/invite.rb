class Invite < ActiveRecord::Base
    validates :name,presence:true
    
    validates_format_of :email, :with => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
    
    validates :name, presence: { message: '請填寫您的姓名/暱稱' }
    validates :email, presence: { message: '請填寫 Email' }
    
    validates :email ,uniqueness: { scope: [:activity_id], message: '這個 Email 已經填寫過了' }
    
    belongs_to :activity
end
