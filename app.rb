require ('sinatra')
  require ('sinatra/reloader')
  require ('./lib/scrabble_score')
  also_reload('lib/**/*.rb')


  get('/') do
    erb(:form)
  end

  get('/scrabble_score') do
    @word = params.fetch('word').upcase().word_score()
    erb(:scrabble)
  end
