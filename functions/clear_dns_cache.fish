function clear_dns_cache --description "Clears DNS cache"
  sudo dscacheutil -flushcache
end
