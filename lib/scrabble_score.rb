class String

  define_method(:word_score) do
    points = 0
    scores = Hash.new
      scores.store(1,"A, E, I, O, U, L, N, R, S, T")
      scores.store(2,"D, G")
      scores.store(3,"B, C, M, P")
      scores.store(4,"F, H, V, W, Y")
      scores.store(5," K")
      scores.store(8,"J, X")
      scores.store(10,"Q, Z")
    letter = self.split("")

    scores.each do |score, char|
      letter.each do |i|
        if scores[score].include? i
          points += score
        end
      end
    end
    points
  end
end
