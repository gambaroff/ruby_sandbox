def is_valid?(input)
  if((input.length >= 7) && (input.match(/[a-z]/) != nil) && (input.match(/[A-Z]/) != nil) \
                            && (input.match(/[0-9]/) != nil) && (input.match(/[!@#\$%^&*()]/) != nil))
    true
  else
    false
  end  
end