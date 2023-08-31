// SPDX-License-Identifier: MIT
// @author: thirdweb (https://github.com/thirdweb-dev/dynamic-contracts)

pragma solidity ^0.8.0;

import "../presets/BaseRouterWithDefaults.sol";

/**
 *  This smart contract is an EXAMPLE, and is not meant for use in production.
 */

contract RouterImmutable is BaseRouterWithDefaults {
    
    constructor(Extension[] memory _extensions) BaseRouterWithDefaults(_extensions) {}

    /*///////////////////////////////////////////////////////////////
                            Overrides
    //////////////////////////////////////////////////////////////*/

    /// @dev Returns whether a function can be disabled in an extension in the given execution context.
    function isAuthorizedCallToUpgrade() internal view virtual override returns (bool) {
        return false;
    }
    
}