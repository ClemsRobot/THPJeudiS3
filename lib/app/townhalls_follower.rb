class Follower
  Dotenv.load('.env')

  def connect
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV["CONSUMER_KEY"]
      config.consumer_secret     = ENV["CONSUMER_KEY_SECRET"]
      config.access_token        = ENV["ACCESS_TOKEN"]
      config.access_token_secret = ENV["ACCESS_TOKEN_SECRET"]
    end
    @client
  end
  def handle   # Va lire la colomne dans le fichier CSV

      @user = []
      CSV.foreach('db/townhalls.csv.csv') { |row| @user << row[3] }
    end

    def follow_method
      list = []

      @user.each do |user|  #handle

        if user == " " || user.nil? # si vide recommence
          puts "user doesn't exist"
        else
          puts user
          list << user
        end
      end

      list.each do |commune|
        begin
          @client.follow!(commune)
          puts commune
        rescue Exception, NotFound, Forbidden
        next
        end
      end
    end

    def boucle
      connect
      handle
      follow_method
    end
  end
