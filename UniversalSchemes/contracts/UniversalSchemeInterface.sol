pragma solidity ^0.5.4;

import "@ageor0114/betterbrooklyndao/Controller/contracts/Avatar.sol";

contract UniversalSchemeInterface {

    function getParametersFromController(Avatar _avatar) internal view returns(bytes32);
    
}