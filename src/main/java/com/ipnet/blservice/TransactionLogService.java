package com.ipnet.blservice;

import com.ipnet.entity.Transaction;
import com.ipnet.vo.TransactionVO;

import java.util.List;

public interface TransactionLogService {

    //新增一条交易记录
    void addTransactionLog(String buyer , String seller , String buyer_bank_account , String seller_bank_account , String patentId , double amount , int IPPoint);

    //获取所有交易记录
    List<Transaction> getAllTransactions();

    //通过交易记录id获取一条交易记录
    TransactionVO getTransById(long transId);

    //通过专利id获取交易记录（列表）
    List<TransactionVO> getTransByPatentId(String patentId);
}
