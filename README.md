# Error Handling in Solidity - Module1

This Solidity smart contract demonstrates error handling techniques using the `require`, `assert`, and `revert` statements. Let's explore how error handling is implemented in the code!

## Prerequisites

Make sure you have the following software installed on your machine:

- Solidity compiler version 0.8.7 or compatible
- Ethereum development environment (e.g., Remix, Truffle, Hardhat, etc.)

## Installation

1. Clone the repository or download the code from the provided source.
2. Open the Solidity code file named `Module1.sol` in your preferred development environment.

## Error Handling

The `Module1` contract showcases error handling mechanisms through the use of `require`, `assert`, and `revert` statements in the `age` function.

### `age(uint256 _age)`

This function takes an unsigned integer parameter `_age` and returns a string message indicating the result of the age check.

The error handling process in the `age` function is as follows:

1. The `require` statement is used to check if the given age is greater than or equal to 18. If the condition evaluates to false, the execution is immediately halted, and an exception with the error message "You must be above or equal to 18!!" is thrown. This ensures that the age requirement is met before executing further code.

2. After the `require` statement, the `assert` statement is used to check if the given age is less than 200. If the condition evaluates to false, it signifies a critical error in the code, and the execution is halted. The `assert` statement helps catch logical errors during development and testing.

3. Next, an `if` statement checks if the given age exceeds 60. If this condition is met, the `revert` statement is triggered, causing the transaction to be reverted with the error message "You have reached the retirement age!!". This ensures that the retirement age is enforced and prevents undesired execution.

4. If none of the above conditions are met, the function successfully completes and returns the message "Yeahhh the functions worked. Well done Umar!".

### More on `require`, `assert`, `revert`

- `require`: The `require` statement is used to validate certain conditions before proceeding with the execution of a function. If the condition evaluates to false, the execution is immediately halted, and any changes made to the state are reverted. It is typically used for input validation and to ensure specific conditions are met.

- `assert`: The `assert` statement is used to check for conditions that should never evaluate to false. It is used to validate internal consistency or invariants of the contract. If the condition provided to `assert` evaluates to false, it signifies a critical error in the code, and the execution is halted. It helps catch logical errors during development and testing.

- `revert`: The `revert` statement is used to flag an error and revert the current transaction. It is often used when encountering unexpected or invalid states where there is no safe way to proceed. When `revert` is triggered, all changes made to the state within the transaction are undone, and any Ether sent along with the transaction is returned. It is essential for preventing erroneous states and preserving the integrity of the contract.

In summary, `require` is used for input validation and conditional checks, `assert` is used for internal consistency and catching critical errors, and `revert` is used to flag and revert transactions when encountering unexpected or invalid states. Each statement serves a specific purpose in handling different types of errors and ensuring the integrity of the contract.

## Deployment

To deploy the `Module1` contract on the Ethereum network, follow these steps:

1. Compile the Solidity code using the Solidity compiler.

2. Choose your preferred deployment method (Remix, Truffle, etc.) and provide the necessary configuration details (e.g., network, gas limit, etc.).

3. Deploy the contract to the desired Ethereum network by following the deployment process specific to your chosen deployment method.

4. Once the contract is deployed, you can interact with it using the provided functions, including the `age` function that showcases error handling.

## License

This code is released under the [MIT License](https://opensource.org/licenses/MIT). Feel free to use, modify, and distribute it as per the terms of the license.
