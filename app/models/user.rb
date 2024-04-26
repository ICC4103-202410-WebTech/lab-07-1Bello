class User < ApplicationRecord

    validates :name, presence: {message: "User needs to have Name"}
    validates :email, uniqueness: {message: "Email is not unique"}, presence: {message: "User needs to have Email"}, format: {with: URI::MailTo::EMAIL_REGEXP, message: "Mot a Email format"}
    validates :password, presence: {message: "User needs to have password"}, length: {minimum: 6, message: "Password needs to be at least 6 caracters"}
end