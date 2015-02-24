require "sinatra"
require 'pry'
require 'pg'

def db_connection
  begin
    connection = PG.connect(dbname: "slacker_news")
    yield(connection)
  ensure
    connection.close
  end
end

def get_news
  news = db_connection { |conn| conn.exec("SELECT * FROM news") }
  news.to_a
end

get "/" do
  @news = get_news
  erb :index
end
