class MadLib
  def noun(noun)
    noun.to_s
  end
  
  def verb(verb)
    verb.to_s
  end
  
  def adjective(adj)
    adj.to_s
  end
  
  def adverb(adv)
    adv
  end

  def result
    "Do you #{verb(verb)} your #{adjective(adj)} #{noun(noun)} #{adverb(adv)}? That's hilarious!"
  end
end