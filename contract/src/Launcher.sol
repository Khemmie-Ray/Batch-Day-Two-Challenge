// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./Token.sol";

contract Launcher {
    struct TokenInfo {
        address tokenAddress;
        string name;
        string symbol;
    }

    mapping(address => TokenInfo[]) public userTokens;

    event TokenCreated(address indexed owner, address tokenAddress, string name, string symbol);

    function createToken(
        string calldata _name,
        string calldata _symbol,
        uint256 _initialSupply
    ) external returns (address) {
        Token newToken = new Token(_name, _symbol, _initialSupply, msg.sender);
        userTokens[msg.sender].push(TokenInfo(address(newToken), _name, _symbol));

        emit TokenCreated(msg.sender, address(newToken), _name, _symbol);
        return address(newToken);
    }

    function getUserTokens(address user) external view returns (TokenInfo[] memory) {
        return userTokens[user];
    }
}

