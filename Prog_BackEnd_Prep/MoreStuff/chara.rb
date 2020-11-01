def labs(word)
  if word.include?('lab') || word.include?('Lab')
    p word
  else
    p "'lab' is not in this word"
  end
end

labs('laboratory')
labs('experiment')
labs('Pans Labyrinth')
labs('elaborate')
labs('polar bear')