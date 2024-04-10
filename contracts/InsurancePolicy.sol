// SPDX-License-Identifier: UNLICENSED 
pragma solidity ^0.8.19;

interface InsurancePolicy {
    function purchasePolicy(address insured, uint premium) external returns (bool);
    function fileClaim(address insured, uint amount) external returns (bool);
    
    event PolicyPurchased(address indexed insured, uint premium);
    event ClaimFiled(address indexed insured, uint amount);
}