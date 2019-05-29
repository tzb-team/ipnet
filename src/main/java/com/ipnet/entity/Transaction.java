package com.ipnet.entity;

import com.ipnet.vo.TransactionVO;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Data
@Table(name="transaction")
@NoArgsConstructor
@AllArgsConstructor
public class Transaction {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long transcation_id;//交易订单id
    private String buyer;//买方nagid
    private String seller;//卖方id
    private String buyer_bank_account;//买方银行账户号
    private String seller_bank_account;//卖方银行账户号
    private double amount;   //交易金额
    private String transcation_time;//交易时间
    private String patent_id;//交易专利号
    private int IPPoint;    //ip豆

    public TransactionVO toVO(){
        TransactionVO vo = new TransactionVO();
        vo.setTranscation_id(transcation_id);
        vo.setBuyer(buyer);
        vo.setSeller(seller);
        vo.setBuyer_bank_account(buyer_bank_account);
        vo.setSeller_bank_account(seller_bank_account);
        vo.setAmount(amount);
        vo.setTranscation_time(transcation_time);
        vo.setPatent_id(patent_id);
        vo.setIPPoint(IPPoint);
        return vo;
    }
}
