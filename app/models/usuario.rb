class Usuario < ApplicationRecord
    has_many :tareas
    has_secure_password
    def to_token_payload
        {
            sub: id,
            email: email
        }
    end
end
