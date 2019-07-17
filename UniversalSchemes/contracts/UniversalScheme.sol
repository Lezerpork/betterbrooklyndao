pragma solidity ^0.5.4;

import "@ageor0114/betterbrooklyndao/UniversalSchemes/contracts/UniversalSchemeInterface.sol";
import "@ageor0114/betterbrooklyndao/Controller/contracts/ControllerInterface.sol";
import "@ageor0114/betterbrooklyndao/Controller/contracts/Avatar.sol";


contract UniversalScheme is UniversalSchemeInterface {
    /**
    *  @dev get the parameters for the current scheme from the controller
    */
    function getParametersFromController(Avatar _avatar) internal view returns(bytes32) {
        require(ControllerInterface(_avatar.owner()).isSchemeRegistered(address(this), address(_avatar)),
        "scheme is not registered");
        return ControllerInterface(_avatar.owner()).getSchemeParameters(address(this), address(_avatar));
    }
}