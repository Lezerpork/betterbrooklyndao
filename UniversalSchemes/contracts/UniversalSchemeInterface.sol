pragma solidity ^0.5.4;

import "../../Controller/contracts/Controller/Avatar.sol";

contract UniversalSchemeInterface {

    function getParametersFromController(Avatar _avatar) internal view returns(bytes32);
    
}