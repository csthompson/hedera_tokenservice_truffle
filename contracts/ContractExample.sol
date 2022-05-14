pragma solidity >=0.7.0 <0.9.0;

import "./HederaTokenService.sol";
import "./HederaResponseCodes.sol";

contract ContractExample is HederaTokenService {
    constructor() {}

    function test() public {
        int256 response = HederaTokenService.transferToken(
            address(0xB099eA64A53Df065Bf0D78e8C1Dc5574654352Ae),
            msg.sender,
            address(this),
            2000
        );
        require(response == 0, "Token transfer failed");
    }
}
