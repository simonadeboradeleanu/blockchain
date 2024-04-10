// SPDX-License-Identifier: UNLICENSED 
pragma solidity ^0.8.19;

import "./InsurancePolicy.sol"; 

// Implementing the insurance policy contract for car insurance
contract CarInsurance is InsurancePolicy {
    mapping(address => uint) public premiumsPaid;
    mapping(address => uint) public claimsFiled;
    mapping(address => bool) public carInsurancePolicies;

    // Function to purchase car insurance policy
    function purchasePolicy(address insured, uint premium) external override returns (bool) {
        require(premium > 0, "Premium must be greater than 0");
        premiumsPaid[insured] = premium;
                carInsurancePolicies[msg.sender] = true; // Add the user to the list of car insurance policy holders
        emit PolicyPurchased(insured, premium);
        return true;
    }
    
    // Function to file a claim for car insurance policy
    function fileClaim(address insured, uint amount) external override returns (bool) {
        require(amount > 0, "Claim amount must be greater than 0");
        require(amount <= premiumsPaid[insured], "Claim amount cannot exceed premium paid");
        claimsFiled[insured] += amount;
        emit ClaimFiled(insured, amount);
        return true;
    }

    // Function to calculate premium based on driving license years, driving record, and car price
    function calculatePremium(uint yearsHeldLicense, uint drivingRecord, uint carPrice) internal pure returns (uint) {
        // Assuming premium calculation based on a formula considering driving license years, driving record, and car price
        // You can adjust this formula according to your requirements and factors
        uint basePremium = 1000; // Base premium
        uint ageFactor = (10 - yearsHeldLicense) * 200; // Assuming maximum driving license years is 10
        uint recordFactor = drivingRecord * 200; // Premium increases with a worse driving record
        uint carPriceFactor = carPrice / 10000; // Premium increases with a higher car price (assuming car price is in Wei)
        return basePremium + ageFactor + recordFactor + carPriceFactor;
    }

    // // Function to purchase car insurance policy with additional data for premium calculation
    // function purchaseCarInsurance(address insured, uint yearsHeldLicense, uint drivingRecord, uint carPrice) external returns (bool) {
    //     uint premium = calculatePremium(yearsHeldLicense, drivingRecord, carPrice); // Calculate premium based on factors
    //     return purchasePolicy(insured, premium); // Call the purchasePolicy function
    // }
    
    // Events for logging actions
}
