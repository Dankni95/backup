function startupCrypto
while ! ip route | grep -oPq 'default via .+ dev wlp1s0'
    echo "interface not up, will try again in 1 second";
  sleep 1;
end
  echo interface UP!
  echo "" && echo "TODAY: "  && echo "" &&  npx bitcoin-chart-cli --toplist 10 | grep -e "Bitcoin\|Ethereum\|Cardano\|Polkadot"
end

startupCrypto
