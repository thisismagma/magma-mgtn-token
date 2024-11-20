pragma solidity ^0.4.24;


import "./MiniMeToken.sol";


// Magma Token
//
// @authors:
// 
// 
// Jurgen Schouppe <jurgen@safetech.io>
// Andy Demeulemeester <andy@safetech.io>
//
//


contract MagmaToken is MiniMeToken {

  constructor(
    address _tokenFactory,
    address _parentToken, 
    uint _parentSnapShotBlock, 
    string _tokenName, 
    uint8 _decimalUnits, 
    string _tokenSymbol, 
    bool _transfersEnabled) 
    public 
    MiniMeToken(
      _tokenFactory,
      _parentToken, 
      _parentSnapShotBlock, 
      _tokenName, 
      _decimalUnits, 
      _tokenSymbol, 
      _transfersEnabled) 
  {
    //constructor
  }

  function safeApprove(address _spender, uint256 _currentValue, uint256 _amount) public returns (bool success) {
    require(allowed[msg.sender][_spender] == _currentValue);
    return doApprove(_spender, _amount);
  }

  function isMagmaToken() public pure returns (bool) {
    return true;
  }
}