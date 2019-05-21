package com.ipnet.dao.contractdao;

import com.ipnet.entity.contract.AgentContract;
import com.ipnet.entity.contract.TransferContract;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import javax.persistence.Table;

@Repository
@Table(name = "transfer_contract")
public interface TransferContractDao  extends JpaRepository<TransferContract  , String> {
}
