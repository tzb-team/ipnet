package com.ipnet.dao;

import com.ipnet.entity.Transaction;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import javax.persistence.Table;
import java.util.List;

@Repository
@Table(name = "transaction")
public interface TransactionDao extends JpaRepository<Transaction, Long> {

    @Query(value = "select trans from Transaction trans where trans.transcation_id=:transId")
    Transaction findByTransId(@Param("transId") long transId);

    @Query(value = "select trans from Transaction trans where trans.patent_id=:patentId")
    List<Transaction> findByPatentId(@Param("patentId") String patentId);
}
