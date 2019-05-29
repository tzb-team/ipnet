package com.ipnet.controller;

import com.ipnet.blservice.TransactionLogService;
import com.ipnet.entity.Transaction;
import com.ipnet.vo.TransactionVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/TransationLog")
public class TransactionLogController {
      @Autowired
      private TransactionLogService service;

    /**
     * 新增交易记录
     * @param buyer
     * @param seller
     * @param buyer_bank_account
     * @param seller_bank_account
     * @param patentId
     * @param amount
     * @param IPPoint
     */
      @RequestMapping("/addTransactionLog")
      public @ResponseBody void addTransactionLog(@RequestParam String buyer,@RequestParam String seller, @RequestParam String buyer_bank_account,@RequestParam String seller_bank_account,@RequestParam String patentId ,@RequestParam double amount ,@RequestParam int IPPoint) {
          service.addTransactionLog(buyer, seller, buyer_bank_account,seller_bank_account,patentId,amount,IPPoint);
      }

    /**
     * 获取所有交易记录
     * @return
     */
    @RequestMapping("/getAllTransactions")
    public @ResponseBody List<Transaction> getAllTransactions() {
        System.out.println(service.getAllTransactions().get(0).getAmount());
        return service.getAllTransactions();
    }

    /**
     * 通过交易记录id获取交易记录信息
     * @param transId
     * @return
     */
    @RequestMapping("/getTransById")
    public @ResponseBody TransactionVO getTransById(long transId){
        return service.getTransById(transId);
    }

    /**
     * 通过专利id获得专利交易记录（列表）
     * @param patentId
     * @return
     */
    @RequestMapping("/getTransByPatentId")
    public @ResponseBody List<TransactionVO> getTransByPatentId(String patentId){
        return service.getTransByPatentId(patentId);
    }

}
