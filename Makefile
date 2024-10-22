.PHONY: all fmt clean test
.PHONY: tools foundry sync

-include .env

all    :; @forge build
fmt    :; @forge fmt
clean  :; @forge clean
test   :; @forge test
dry-run:; @forge script script/Deploy.s.sol:Deploy 
deploy :; @forge script script/Deploy.s.sol:Deploy --broadcast --verify

sync   :; @git submodule update --recursive

foundry:; curl -L https://foundry.paradigm.xyz | bash
