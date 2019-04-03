def mkdir_ruby_setup 

    # Create a folder with the name enter by the user
    # If the user doesn't have enter or does have enter many name folder, the program should return the instructions or he should stoped.

    abort("Missing name folder or too much word  ==> Please enter name folder with one word") if ARGV.empty? || ARGV.length >= 2
    folder_name = ARGV.join
    Dir.mkdir("#{folder_name}")
    
    # Create a Gemfile file
    
    gemfile = File.open("#{folder_name}/Gemfile", "w")
    gemfile.puts("
        gem 'rspec'
        gem 'pry'
        gem 'rubocop', '~> 0.57.2'
        ")

    # Create a gitignore file

    gitignore = File.open("#{folder_name}/.gitignore", "w")
    gitignore.puts(".env")
    
    # Create a .env file

    env = File.open("#{folder_name}/.env", "w")

    # Create a "README" file 

    readme = File.open("#{folder_name}/README.md", "w")
    readme.puts("Vous êtes dans une dossier Setup Ruby")
    
    # Create a "lib" folder

    Dir.mkdir("#{folder_name}/lib")

    # Run the "rspec --init" command

    Dir.chdir("#{folder_name}") do
    system("rspec --init")
    end
      
end

mkdir_ruby_setup 