require 'google/apis/gmail_v1'
require 'googleauth'
require 'googleauth/stores/file_token_store'
require 'fileutils'
require 'dotenv'
require 'mail'

Dotenv.load('.env')

# Authentification et autorisation au service Gmail

OOB_URI = 'urn:ietf:wg:oauth:2.0:oob'.freeze
APPLICATION_NAME = 'Gmail API Ruby Quickstart'.freeze
CREDENTIALS_PATH = ENV['CREDENTIALS'].freeze
# The file token.yaml stores the user's access and refresh tokens, and is
# created automatically when the authorization flow completes for the first
# time.
TOKEN_PATH = ENV['TOKEN'].freeze
SCOPE = 'https://www.googleapis.com/auth/gmail.compose'

##
# Ensure valid credentials, either by restoring from the saved credentials
# files or intitiating an OAuth2 authorization. If authorization is required,
# the user's default browser will be launched to approve the request.
#
# @return [Google::Auth::UserRefreshCredentials] OAuth2 credentials
def authorize
  client_id = Google::Auth::ClientId.from_file(CREDENTIALS_PATH)
  token_store = Google::Auth::Stores::FileTokenStore.new(file: TOKEN_PATH)
  authorizer = Google::Auth::UserAuthorizer.new(client_id, SCOPE, token_store)
  user_id = 'default'
  credentials = authorizer.get_credentials(user_id)
  if credentials.nil?
    url = authorizer.get_authorization_url(base_url: OOB_URI)
    puts 'Open the following URL in the browser and enter the ' \
         "resulting code after authorization:\n" + url
    code = gets
    credentials = authorizer.get_and_store_credentials_from_code(
      user_id: user_id, code: code, base_url: OOB_URI
    )
  end
  credentials
end

# Initialize the API
service = Google::Apis::GmailV1::GmailService.new
service.client_options.application_name = APPLICATION_NAME
service.authorization = authorize

# Parcour du fichier csv pour extraire les adresses mail
@mail = []
CSV.foreach('db/emails.csv') do |name, email| 
@mail << email
end

# Envoie des emails à toutes les adresses du tableau @mail
@mail.each do |adress_mail|
        mail = Mail.new do
            from    'mikel@test.lindsaar.net'
            to      "#{adress_mail}"
            subject 'Lumière sur les Restos du coeur'
            body    File.read('body.txt')
        end
          
        mail.to_s

        message = Google::Apis::GmailV1::Message.new(raw: mail.to_s)

        service.send_user_message(ENV['MAIL'], message)
end
    


