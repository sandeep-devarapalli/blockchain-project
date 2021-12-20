// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

//**Constructor** must be defined using “constructor” keyword

//**In version 0.5.0 or above** it is **mandatory to use “memory” keyword** so as to 
//**explicitly mention the data location**

contract IrisDataSetContract {
    IrisDataSet[] public irisDataSet;

    uint256 public irisDataSetCount;

    struct IrisDataSet {
        uint256 _id;
        string _DataSetname;
        string _DataSetDescription;
        string _SepalLengthCm;
        string _SepalWidthCm;
        string _PetalLengthCm;
        string _PetalWidthCm;
        string _Species;
        string _PredictedValue;
    }

    function addIrisData(
        uint256 _id,
        string memory _DataSetname,
        string memory _DataSetDescription,
        string memory _SepalLengthCm,
        string memory _SepalWidthCm,
        string memory _PetalLengthCm,
        string memory _PetalWidthCm,
        string memory _Species,
        string memory _PredictedValue
    ) public {
        irisDataSet.push(IrisDataSet(
        _id,
        _DataSetname,
        _DataSetDescription,
        _SepalLengthCm,
        _SepalWidthCm,
        _PetalLengthCm,
        _PetalWidthCm,
        _Species,
        _PredictedValue
        ));
        irisDataSetCount += 1;
    }
}
