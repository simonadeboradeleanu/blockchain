// SPDX-License-Identifier: UNLICENSED 
pragma solidity ^0.8.19;

import "./InsurancePolicy.sol";
import "./CarInsurance.sol";
import "./TravelInsurance.sol";
import "./HealthInsurance.sol";


// FileClaim contract
contract FileClaim {
    // Address of the CarInsurance contract
    constructor() {

    }

    // // Function to file a claim
    // function fileClaim(string memory claimType) public {
    //     // Check if the user has the specified type of insurance
    //     require(hasInsurance(msg.sender, claimType), "User does not have the specified type of insurance");

    //     // File the claim
    //     // Implement claim filing logic...
    // }

    // Function to verify if the user has the specified type of insurance
    function fileClaim(string memory claimType) public {
        // if (keccak256(bytes(claimType)) == keccak256(bytes("car"))) {
        //     // Check if the user has car insurance
        //     require(CarInsurance(carInsuranceContractAddress).carInsurancePolicies(msg.sender), "User does not have car insurance");
        // } else if (keccak256(bytes(claimType)) == keccak256(bytes("health"))) {
        //     // Check if the user has health insurance
        //     require(HealthInsurance(healthInsuranceContractAddress).healthInsurancePolicies(msg.sender), "User does not have health insurance");
        // } else if (keccak256(bytes(claimType)) == keccak256(bytes("travel"))) {
        //     // Check if the user has travel insurance
        //     require(TravelInsurance(travelInsuranceContractAddress).travelInsurancePolicies(msg.sender), "User does not have travel insurance");
        // } else {
        //     revert("Invalid claim type");
        // }

        // File the claim
        // Implement claim filing logic...
    }
}
