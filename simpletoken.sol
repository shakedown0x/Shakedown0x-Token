pragma solidity ^0.4.18;

import 'openzeppelin-solidity/contracts/token/ERC20/StandardToken.sol';

/**
 * @title SimpleToken
 * @dev Very simple ERC20 Token example, where all tokens are pre-assigned to the creator.
 * Note they can later distribute these tokens as they wish using `transfer` and other
 * `StandardToken` functions.
 */
contract SimpleToken is StandardToken {

  string public constant name = "Shakedown0x";
  string public constant symbol = "SHAKE";
  uint8 public constant decimals = 000000000000000000;

  uint256 public constant INITIAL_SUPPLY = 150000000 * (10 ** uint256(decimals));

  /**
   * @dev Constructor that gives msg.sender all of existing tokens.
   */
  function SimpleToken() public {
    totalSupply_ = INITIAL_SUPPLY;
    balances[msg.sender] = INITIAL_SUPPLY;
  }

}
