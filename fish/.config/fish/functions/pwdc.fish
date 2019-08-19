function pwdc
  pwd | pbcopy
  echo "pwd: '"(pbpaste)"' stored in copy buffer"
end
