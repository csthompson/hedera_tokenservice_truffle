// SPDX-License-Identifier: Apache-2.0
pragma solidity >=0.5.0 <0.9.0;
pragma experimental ABIEncoderV2;

import "./HederaResponseCodes.sol";
import "./IHederaTokenService.sol";

abstract contract HederaTokenService is HederaResponseCodes {

    address constant precompileAddress = address(0x167);

    uint constant ADMIN_KEY_TYPE = 1;
    uint constant KYC_KEY_TYPE = 2;
    uint constant FREEZE_KEY_TYPE = 4;
    uint constant WIPE_KEY_TYPE = 8;
    uint constant SUPPLY_KEY_TYPE = 16;
    uint constant FEE_SCHEDULE_KEY_TYPE = 32;
    uint constant PAUSE_KEY_TYPE = 64;

    function cryptoTransfer(IHederaTokenService.TokenTransferList[] memory tokenTransfers) internal
        returns (int responseCode)
    {
      return 0;
    }

    function mintToken(address token, uint64 amount, bytes[] memory metadata) internal
        returns (int responseCode, uint64 newTotalSupply, int64[] memory serialNumbers)
    {
        int64[] memory serialNumbers_;
        return (0, 100, serialNumbers_);
    }
    
    function burnToken(address token, uint64 amount, int64[] memory serialNumbers) internal
        returns (int responseCode, uint64 newTotalSupply)
    {
       return (0, 100);
    }

    function associateTokens(address account, address[] memory tokens) internal returns (int responseCode) {
        return 0; 
    }

    function associateToken(address account, address token) internal returns (int responseCode) {
        return 0;
    }

    function dissociateTokens(address account, address[] memory tokens) internal returns (int responseCode) {
        return 0;
    }

    function dissociateToken(address account, address token) internal returns (int responseCode) {
        return 0;
    }

    function createFungibleToken(
        IHederaTokenService.HederaToken memory token,
        uint initialTotalSupply,
        uint decimals)
    internal returns (int responseCode, address tokenAddress) {
        return (0, msg.sender);
    }

    function createFungibleTokenWithCustomFees(
        IHederaTokenService.HederaToken memory token,
        uint initialTotalSupply,
        uint decimals,
        IHederaTokenService.FixedFee[] memory fixedFees,
        IHederaTokenService.FractionalFee[] memory fractionalFees)
    internal returns (int responseCode, address tokenAddress) {
        return (0, msg.sender);
    }

    function createNonFungibleToken(IHederaTokenService.HederaToken memory token)
    internal returns (int responseCode, address tokenAddress) {
      return (0, msg.sender);
     }
    function createNonFungibleTokenWithCustomFees(
        IHederaTokenService.HederaToken memory token,
        IHederaTokenService.FixedFee[] memory fixedFees,
        IHederaTokenService.RoyaltyFee[] memory royaltyFees)
    internal returns (int responseCode, address tokenAddress) {

      return (0, msg.sender);
    }
    
    function transferTokens(address token, address[] memory accountIds, int64[] memory amounts) internal
        returns (int responseCode)
    {
        return 0;
    }

    function transferNFTs(address token, address[] memory sender, address[] memory receiver, int64[] memory serialNumber)
        internal returns (int responseCode)
    {
        return 0;
    }

    function transferToken(address token, address sender, address receiver, int64 amount) internal
        returns (int responseCode)
    {
        return 0;
    }

    function transferNFT(address token, address sender, address receiver, int64 serialNumber) internal
        returns (int responseCode)
    {
        return 0;
    }

}