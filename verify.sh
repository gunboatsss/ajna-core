#!/bin/bash
export ETHERSCAN_API_KEY=verifyContract
export CHAIN=1380012617
export VERIFIER_URL=https://mainnet.explorer.rarichain.org/api?
forge verify-contract $(jq -r .address ./deployments/BorrowerActions.json) src/libraries/external/BorrowerActions.sol:BorrowerActions -c $CHAIN --watch --verifier blockscout
forge verify-contract $(jq -r .address ./deployments/KickerActions.json) src/libraries/external/KickerActions.sol:KickerActions -c $CHAIN --watch --verifier blockscout
forge verify-contract $(jq -r .address ./deployments/LenderActions.json) src/libraries/external/LenderActions.sol:LenderActions -c $CHAIN --watch --verifier blockscout
forge verify-contract $(jq -r .address ./deployments/LPActions.json) src/libraries/external/LPActions.sol:LPActions -c $CHAIN --watch --verifier blockscout
forge verify-contract $(jq -r .address ./deployments/PoolCommons.json) src/libraries/external/PoolCommons.sol:PoolCommons -c $CHAIN --watch --verifier blockscout
forge verify-contract $(jq -r .address ./deployments/PositionNFTSVG.json) src/libraries/external/PositionNFTSVG.sol:PositionNFTSVG -c $CHAIN --watch --verifier blockscout
forge verify-contract $(jq -r .address ./deployments/SettlerActions.json) src/libraries/external/SettlerActions.sol:SettlerActions -c $CHAIN --watch --verifier blockscout
forge verify-contract $(jq -r .address ./deployments/TakerActions.json) src/libraries/external/TakerActions.sol:TakerActions -c $CHAIN --watch --verifier blockscout
forge verify-contract $(jq -r .address ./deployments/ERC20PoolFactory.json) src/ERC20PoolFactory.sol:ERC20PoolFactory -c $CHAIN --constructor-args $(cast abi-encode "f(address)" 0x98BE1b64fD73Ac168F9b588bFeCDe8471999Efbc) --watch --verifier blockscout
forge verify-contract $(jq -r .address ./deployments/ERC721PoolFactory.json) src/ERC721PoolFactory.sol:ERC721PoolFactory -c $CHAIN --constructor-args $(cast abi-encode "f(address)" 0x98BE1b64fD73Ac168F9b588bFeCDe8471999Efbc) --watch --verifier blockscout
forge verify-contract $(jq -r .address ./deployments/PoolInfoUtils.json) src/PoolInfoUtils.sol:PoolInfoUtils -c $CHAIN --watch --verifier blockscout
forge verify-contract $(jq -r .address ./deployments/PoolInfoUtilsMulticall.json) src/PoolInfoUtilsMulticall.sol:PoolInfoUtilsMulticall -c $CHAIN --constructor-args $(cast abi-encode "f(address)" $(jq -r .address ./deployments/PoolInfoUtils.json)) --watch --verifier blockscout
forge verify-contract $(jq -r .address ./deployments/PositionManager.json) src/PositionManager.sol:PositionManager -c $CHAIN --constructor-args $(cast abi-encode "f(address,address)" $(jq -r .address ./deployments/ERC20PoolFactory.json) $(jq -r .address ./deployments/ERC721PoolFactory.json)) --watch --verifier blockscout
forge verify-contract 0x687Ed38001cD827668E1E07a204C41c36f0FAD3e src/ERC20Pool.sol:ERC20Pool -c $CHAIN --watch --verifier blockscout
forge verify-contract 0x996628A807F80E746e98447b96950F1E18F0Fe94 src/ERC721Pool.sol:ERC721Pool -c $CHAIN --watch --verifier blockscout