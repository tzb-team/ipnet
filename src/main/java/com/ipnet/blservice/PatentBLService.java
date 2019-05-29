package com.ipnet.blservice;

import com.ipnet.bl.patentbl.Invitation;
import com.ipnet.enums.Patent_state;
import com.ipnet.enums.Region;
import com.ipnet.enums.ResultMessage;
import com.ipnet.utility.IDNotExistsException;
import com.ipnet.vo.PatentVO;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

/**
 * @author lzb
 * @date 2018/7/21 10:12
 */
public interface PatentBLService {

    //新增专利
    PatentVO createPatent(PatentVO newPatent);

    //通过专利id获取专利
    PatentVO searchPatentByID(String patentID);

    //新增一个专利
    ResultMessage entryPatent(String patentID, String patent, String userId, String holder, String url, String applyTime, String type, String district, String profile);

    //专利名 搜索专利
    List<PatentVO> searchPatentByName(String name);

    //地区 搜索专利
    List<PatentVO> searchPatentByRegion(String region);

    //状态 搜索专利
    List<PatentVO> searchPatentsByState(Patent_state state);

    //起止日期 搜索专利
    List<PatentVO> searchPatentsByApplyDate(String StartDate , String endDate);

    //专利种类 搜索专利
    List<PatentVO> searchPatentsByType(String patent_type);

    // 搜索专利
    List<PatentVO> searchPatentsByValid_period(String valid_period);

    List<PatentVO> searchPatentByPool(String poolId);

    List<PatentVO> getPatentList(String userId);

    List<PatentVO> searchPatent(String info);

    Boolean deletePatent(String patentID);

    Boolean updatePatentState(Patent_state newState, String patentID) throws IDNotExistsException;

    void exitIpSet(String ipId,String ipSetId) throws IDNotExistsException;     //专利退池

    boolean updateIp(PatentVO ipVo);  //更新专利

    void denyInvitationFromPool(String patentId , String patentPoolId) throws IDNotExistsException;

    boolean acceptInvitationFromPool(String patentId , String patentPoolId) throws IDNotExistsException;

    void sendInvitationFromPool(String patentId , String patentPoolId) throws IDNotExistsException;

     List<PatentVO> searchRelatedPatents();

    List<PatentVO> recommendPatent();

    List<Invitation> receiveInvitation( String holdId);

}
