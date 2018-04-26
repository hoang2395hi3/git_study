class User < ApplicationRecord
	# name: Không bỏ trống, tối thiểu 5 ký tự, tối đa 255 ký tự
	validates :name, presence:true, length: {in: 5..255}

	# email: Không bỏ trống, tính duy nhất, đúng định dạng email
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, length: {in: 4..255}, presence: true, uniqueness: true , format: { with: VALID_EMAIL_REGEX, message: "chưa đúng định dạng" }

	validates :password, presence: true, length: {in: 6..55}
	has_secure_password

	# gender: Không bỏ trống
	validates :gender, presence: true

end
