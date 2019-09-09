function pak
  
  set CMD $argv[1]
  set HOST $argv[2]
  set FROMPATH $argv[3]
  set TOPATH $argv[4]
  set UFQDN "valkevich@claims-0$HOST.sd.kontur.ru"

  switch (echo $CMD)
  case pull
    scp $UFQDN:$FROMPATH $TOPATH
  case push
    scp $FROMPATH $UFQDN:$TOPATH
  case conn
    ssh $UFQDN
  case vpn
    sudo openvpn --config /etc/openvpn/ovpn_valkevich_2024-08-12.ovpn
  end
end
