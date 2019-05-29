pragma solidity 0.4.15;

contract  patent {
    struct content{
            address owner;
    }
    
    // 信息 信息注册 
    mapping (string=>content) private patentInfo;
    
    address private contractOwner;
    
    function patent() public{
        contractOwner = msg.sender;
    }
    
    modifier onlyOwner() {
        require(msg.sender == contractOwner);
        _;
    }
    
    function regPatent (string id,address owner) public onlyOwner returns (bool){
        
        content memory info = content(owner);
        patentInfo[id]=info;
        // RegPatent(id,owner,poolid);
        return true;
        
    } 
    
    function getPatentInfo (string id) constant public returns (address){
        return (patentInfo[id].owner);
    }
    
    // 交易部分 
    
    
    function transaction(string patentid,address newHolder) public onlyOwner() returns (bool){
        
        patentInfo[patentid].owner = newHolder;
        // Transaction(patentid,msg.sender);
        return true;
        
    }
}