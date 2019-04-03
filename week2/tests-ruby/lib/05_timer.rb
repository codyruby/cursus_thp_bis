def time_string(seconds)
    h = (seconds/3600).to_s
    if h.length == 1
        h = "0" + h
    end
  
    m = (seconds%3600/60).to_s
  
    m = "0" + m if  m.length == 1
  
    s = (seconds%60).to_s
  
    if s.length == 1
        s = "0" + s
    end
    
     "#{h}:#{m}:#{s}"
  end