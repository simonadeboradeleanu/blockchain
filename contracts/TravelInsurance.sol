// SPDX-License-Identifier: UNLICENSED 
pragma solidity ^0.8.19;

import "./InsurancePolicy.sol";

contract TravelInsurance is InsurancePolicy {
    address payable owner;
    mapping(address => uint) public premiumsPaid;
    mapping(address => uint) public claimsFiled;
        mapping(address => bool) public travelInsurancePolicies;

//treb sa fac lista de useri care au polita asta de asigurare


    // Constructor pentru a seta adresa proprietarului contractului
    constructor() {
        owner = payable(msg.sender);
    }

    // Funcția de achiziționare a poliței de asigurare pentru călătorii
    function purchasePolicy(address insured, uint premium) external override returns (bool) {
        require(premium > 0, "Premium must be greater than 0");
        premiumsPaid[insured] = premium;
                travelInsurancePolicies[msg.sender] = true; // Add the user to the list of car insurance policy holders

        emit PolicyPurchased(insured, premium);
        return true;
    }
    
    // Funcția de depunere a cererii de despăgubire pentru polița de asigurare pentru călătorii
    function fileClaim(address insured, uint amount) external override returns (bool) {
        require(amount > 0, "Claim amount must be greater than 0");
        require(amount <= premiumsPaid[insured], "Claim amount cannot exceed premium paid");
        claimsFiled[insured] += amount;
        emit ClaimFiled(insured, amount);
        return true;
    }

    // Eventuri pentru înregistrarea acțiunilor
    // Remove the duplicate event declaration
}