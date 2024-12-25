# MBridge AI Token (test v1.3)

## Overview
MBridge AI Token (MBR) is an ERC-20 token with innovative BTC-backed borrowing capabilities and automated market stability mechanisms. The system maintains BTC reserves to provide collateralized lending while implementing controlled buyback strategies for price stability.

## Key Features
- BTC-backed reserves (70% of token sales)
- Collateralized BTC borrowing
- Automated buyback mechanism
- Interest burning system
- Multi-layered security features

## Smart Contract Architecture

### Core Contracts
- `MBridgeToken.sol`: Main token contract with ERC-20 implementation
- `BorrowManager.sol`: Handles borrowing operations and collateral
- `ReserveManager.sol`: Manages BTC reserves and buyback operations

### System Parameters
- Total Supply: 1,000,000,000 MBR
- Maximum System Borrow: 100 BTC
- Maximum User Borrow: 5 BTC
- Minimum Borrow: 0.1 BTC
- Collateral Ratio: 30%
- Interest Rate: 5% APR

## Getting Started

### Prerequisites
- Node.js (v16 or higher)
- npm or yarn
- Hardhat

### Installation
```bash
# Clone the repository
git clone https://github.com/mbridge-ai/token-contract.git

# Install dependencies
cd token-contract
npm install

# Create environment file
cp .env.example .env
```

### Configure Environment
Add the following to your `.env` file:
```
PRIVATE_KEY=your_private_key
ETHERSCAN_API_KEY=your_etherscan_key
ALCHEMY_API_KEY=your_alchemy_key
```

## Development

### Compile Contracts
```bash
npx hardhat compile
```

### Run Tests
```bash
# Run all tests
npm test

# Run specific test suite
npx hardhat test test/unit/MBridgeToken.test.ts
```

### Deploy Contracts
```bash
# Deploy to testnet
npx hardhat run scripts/deploy/deploy.ts --network goerli

# Deploy to mainnet
npx hardhat run scripts/deploy/deploy.ts --network mainnet
```

## Security

### Audit Status
- Initial audit completed by [Audit Firm]
- No critical vulnerabilities found
- Full audit report available in `/docs/audit/`

### Security Features
- ReentrancyGuard implementation
- Emergency pause functionality
- Multi-signature requirements for critical operations
- Circuit breakers for system stability

## Documentation

### Technical Documentation
- [Smart Contract Architecture](docs/technical/architecture.md)
- [API Reference](docs/technical/api.md)
- [Testing Guide](docs/technical/testing.md)

### User Documentation
- [Borrowing Guide](docs/user/borrowing.md)
- [Token Mechanics](docs/user/mechanics.md)

## Contributing
1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact
- Website: [(https://mbridge.ai](https://www.mbridgeconnect.com/))

## Acknowledgments
- OpenZeppelin for secure contract implementations
- Hardhat Development Environment
- Ethereum Community
