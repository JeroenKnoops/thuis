function ip
  ifconfig en0 | awk '/inet /{print $2}' | pbcopy
  echo "ip-address: '"(pbpaste)"' stored in copy buffer"
end
