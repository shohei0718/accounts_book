class User < ApplicationRecord
  validates :username, presence: true
  validates :email, presence: true,
                    uniqueness: true,
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/}

  validates :password,
            length: {minimum: 8, message: "は8文字以上で入力してください"},
            format: { with: /\A(?=.*?[a-z])(?=.*?[A-Z])(?=.*?\d)(?=.*?[!-\/:-@\[-`{-~])[!-~]+\z/,
                      message: "は半角英小文字・大文字・数字・記号を用いて作成し、それぞれ1文字以上使用してください" }
  has_secure_password
end
