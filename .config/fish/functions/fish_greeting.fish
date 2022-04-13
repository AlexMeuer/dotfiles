function fish_greeting
  if type -q "lolcat"
    echo "Let's fish!" | lolcat
  else
    echo "Let's fish!"
  end
end
