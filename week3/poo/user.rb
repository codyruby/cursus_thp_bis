require "pry"
require "rb-readline"

# class User
#     def greet
#         puts "Bonjour, monde !"
#     end
#     def say_hello_to_someone(first_name)
#         puts "Bonjour, #{first_name} !"
#     end
# end

# class User
#     def show_itself
#         print "Voici l'instance : "
#         puts self
#     end
# end

# class User

#     def update_email(email_to_update)
#         @email = email_to_update
#     end
    
#     def read_email
#         return @email
#     end

# end

# class User
#     attr_writer :mastercard
    
#     def read_mastercard
#         return @mastercard
#     end
# end 

# class User
#     attr_reader :birthdate

#     def update_birthdate(birthdate_to_update)
#         @birthdate = birthdate_to_update
#     end
# end

# class User
#     attr_accessor :email
# end

# class User
#     attr_accessor :email

#     def initialize(email_to_save)
#         @email = email_to_save
#         puts "Email : Bienvenue !!"
#     end
# end

class User
    attr_accessor :email
    @@user_count = 0

    def initialize(email_to_save)
        @email = email_to_save
        @@user_count = @@user_count + 1
    end

    def self.count
        return @@user_count
    end
end

binding.pry
puts "end of file"