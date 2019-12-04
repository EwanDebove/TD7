pragma solidity >=0.4.21 <0.6.0;

import "@openzeppelin/contracts/token/ERC721/ERC721Full.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721Mintable.sol";

contract MyNFT is ERC721Full, ERC721Mintable {
  
  string public name;
  uint256  lastId;

  constructor() ERC721Full("MyNFT", "MNFT") public {
  	lastId = 0;
  }
  function setname(string memory _name) public {
  	name = _name;
  }

  function mint() public payable {
  	require(msg.value == 100 );
  	_safeMint(msg.sender, lastId);
  	lastId = lastId +1;
  }

}