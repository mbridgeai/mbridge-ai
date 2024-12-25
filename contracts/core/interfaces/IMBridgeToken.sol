// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IMBridgeToken {
    // Events
    event Borrowed(address indexed user, uint256 amount);
    event Repaid(address indexed user, uint256 amount);
    event ReservesUpdated(uint256 newReserves);
    event BuybackExecuted(uint256 amount, uint256 price);

    // View functions
    function btcReserves() external view returns (uint256);
    function userBorrows(address user) external view returns (uint256);
    function totalBorrows() external view returns (uint256);
    function tokenPrice() external view returns (uint256);

    // State-changing functions
    function borrow(uint256 amount) external;
    function repay(uint256 amount) external;
    function executeBuyback(uint256 amount) external;
    function updateReserves(uint256 newReserves) external;
    function updatePrices(uint256 _btcPrice, uint256 _tokenPrice) external;
}

interface IBorrowManager {
    struct BorrowRequest {
        uint256 amount;
        uint256 collateral;
        uint256 timestamp;
    }

    event BorrowRequested(address indexed user, uint256 amount, uint256 collateral);
    event BorrowApproved(address indexed user, uint256 amount);
    event BorrowRejected(address indexed user, uint256 amount, string reason);

    function requestBorrow(uint256 amount) external;
    function approveBorrow(address user, uint256 requestId) external;
    function rejectBorrow(address user, uint256 requestId, string calldata reason) external;
    function getBorrowRequest(address user, uint256 requestId) external view returns (BorrowRequest memory);
}

interface IReserveManager {
    event ReserveUpdated(uint256 newReserve);
    event MinimumReserveUpdated(uint256 newMinimumReserve);
    event ReserveRatioUpdated(uint256 newRatio);

    function updateReserves(uint256 newReserve) external;
    function updateMinimumReserve(uint256 newMinimumReserve) external;
    function updateReserveRatio(uint256 newRatio) external;
    function getCurrentReserveRatio() external view returns (uint256);
    function isReserveHealthy() external view returns (bool);
}
