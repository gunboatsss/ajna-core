forge verify-contract --watch --chain-id 534352 0xb052909362e54420Af97dCb5961EFc803Dd0ec6D KickerActions
forge verify-contract --watch --chain-id 534352 0x355ba510B1A5F68a7e06D9FD5D86E36b9345bddB LPActions
forge verify-contract --watch --chain-id 534352 0xFf08C829dAE8474018E207b92a0135FF0dc54ACF LenderActions
forge verify-contract --watch --chain-id 534352 0xB80c6f3674d9b1E542eEc30cf2a3F954da899212 PoolCommons
forge verify-contract --watch --chain-id 534352 0xf712Ff55c70e9C12D39177256ced13F363100402 PositionNFTSVG
forge verify-contract --watch --chain-id 534352 0xF204Ee2f36E5f6A13135e62ae7FA8d5931459De2 SettlerActions
forge verify-contract --watch --chain-id 534352 0x97fd1D11BE945f4c3b4976F8865abf604dBDC1EB TakerActions
forge verify-contract --chain-id 534352 --watch 0x7F954bb331589eF660ab2090Dc57d1d2DF06c63D ERC20PoolFactory --constructor-args $(cast abi-encode "constructor(address)" ${AJNA_TOKEN})
forge verify-contract --chain-id 534352 --watch 0x609cC477d0929C42B70F40dA030a8e5C9cD0A06E ERC721PoolFactory --constructor-args $(cast abi-encode "constructor(address)" ${AJNA_TOKEN})
forge verify-contract --chain-id 534352 --watch 0xB6D6D9FE583CC085711C51D40F8f33Da8875d4EB PoolInfoUtils
forge verify-contract --chain-id 534352 --watch 0xC8DcdCDB6bfaAA1F86c1e45a7eBd616eBabf1E3c PoolInfoUtilsMulticall --constructor-args $(cast abi-encode "constructor(address)" 0xB6D6D9FE583CC085711C51D40F8f33Da8875d4EB)
forge verify-contract --chain-id 534352 --watch 0x840Ba197555Fc8f3F7112327159Cd52c4fBC1625 PositionManager --constructor-args $(cast abi-encode "constructor(address,address)" 0x7F954bb331589eF660ab2090Dc57d1d2DF06c63D 0x609cC477d0929C42B70F40dA030a8e5C9cD0A06E)
forge verify-contract --chain-id 534352 --watch 0x420BB7Ff1d8DD23d0Fc05852D02163ff8756350E ERC20Pool
forge verify-contract --chain-id 534352 --watch 0xDdB273BbdDaD7294C39f5aE7657652C46029F6Ac ERC721Pool