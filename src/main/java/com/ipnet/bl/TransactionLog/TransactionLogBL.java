package com.ipnet.bl.TransactionLog;

import com.ipnet.blservice.TransactionLogService;
import com.ipnet.dao.TransactionDao;
import com.ipnet.entity.Transaction;
import com.ipnet.utility.BlockChain;
import com.ipnet.vo.TransactionVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service
public class TransactionLogBL implements TransactionLogService{
    @Autowired
    private  TransactionDao transactionDao;

    BlockChain blockChain = new BlockChain();

    /**
     * 新增交易记录:1.数据库 2.上链
     * @param buyer
     * @param seller
     * @param buyer_bank_account
     * @param seller_bank_account
     * @param patentId
     * @param amount
     * @param IPPoint
     */
    @Override
    public String addTransactionLog(String buyer, String seller, String buyer_bank_account, String seller_bank_account, String patentId , double amount ,int IPPoint) {
        //保存交易记录
        //1.数据库存储
        Transaction transaction = new Transaction();
        transaction.setBuyer(buyer);
        transaction.setSeller(seller);
        transaction.setBuyer_bank_account(buyer_bank_account);
        transaction.setSeller_bank_account(seller_bank_account);
        transaction.setPatent_id(patentId);
        transaction.setAmount(amount);
        transaction.setIPPoint(IPPoint);

        SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
        String date = df.format(new Date());
        transaction.setTranscation_time(date);
        this.transactionDao.saveAndFlush(transaction);
        long transid = getAllTransactions().get(0).getTranscation_id();
        //2.区块链存储
        String txHash = blockChain.patentTrade(patentId,buyer);
        if (txHash==null){
            transactionDao.deleteById(transid);
            return "";
        }

        else
            return txHash;

        //完成交易
        //1.转账
        //TODO：待解决

    }

    @Override
    public List<Transaction> getAllTransactions() {
        List<Transaction> transactions = this.transactionDao.findAll();
        if(transactions ==null || transactions.size() == 0){
            return null;
        }
        return transactions;
    }

    @Override
    public TransactionVO getTransById(long transId) {
        try{
            TransactionVO tran = new TransactionVO();
            tran = this.transactionDao.findByTransId(transId).toVO();
            return tran;
        }catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public List<TransactionVO> getTransByPatentId(String patentId) {
        try{
            List<TransactionVO> trans = new ArrayList<>();
            this.transactionDao.findByPatentId(patentId).forEach(transaction -> {
                trans.add(transaction.toVO());
            });
            return trans;
        }catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

}
