pragma solidity ^0.4.24;
import "openzeppelin-solidity/contracts/ownership/Ownable.sol";

contract TokenModule is Ownable {
    enum TransferAllowanceResult {NotAllowed, Allowed, ForceNotAllowed, ForceAllowed}

    address tokenAddress;

    constructor(address _tokenAddress)
    public
    {
        tokenAddress = _tokenAddress;
    }

    function isTransferAllowed(address _from, address _to, uint256 _amount)
    public returns(TransferAllowanceResult);
}