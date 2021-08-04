# Defined interactively
function crypto
  echo "" && echo "TODAY: "  && echo "" &&  npx bitcoin-chart-cli --toplist 10 | grep -e "Bitcoin\|Ethereum\|Cardano\|Polkadot"
end
