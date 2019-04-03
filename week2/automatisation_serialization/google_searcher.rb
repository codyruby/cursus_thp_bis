require 'launchy'

def check_if_user_gave_input
        abort("Google searcher: missing search ==> Please enter search") if ARGV.empty?
end

def get_folder_name
    return folder_name = ARGV
end

def google_url
    folder_url = "https://www.google.com/search?q=#{get_folder_name.join"+"}"
    Launchy.open(folder_url)
end

google_url
