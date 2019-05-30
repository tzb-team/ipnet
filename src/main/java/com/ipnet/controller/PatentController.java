package com.ipnet.controller;

/**
 * @author gy
 */

import com.ipnet.bl.patentbl.Invitation;
import com.ipnet.blservice.PatentBLService;
import com.ipnet.enums.Patent_state;
import com.ipnet.enums.ResultMessage;
import com.ipnet.utility.IDNotExistsException;
import com.ipnet.vo.PatentVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/Patent")
public class PatentController {
    @Autowired
    private PatentBLService service;

    @RequestMapping("/createPatent")
    public @ResponseBody
    PatentVO createPatent(@RequestBody PatentVO newPatent) {
        return service.createPatent(newPatent);
    }

//1//  信息获取
    /**
     * 模糊搜索
     * @param info
     * @return
     */
    @RequestMapping("/searchPatent")
    public @ResponseBody List<PatentVO> searchPatent(@RequestParam String info){
        return service.searchPatent(info);
    }

    /**
     * 根据id查找patent
     * @param patentID
     * @return
     */
    @RequestMapping("/searchPatentByID")
    public @ResponseBody
    PatentVO searchPatentByID(@RequestParam String patentID) {
        return service.searchPatentByID(patentID);
    }

    /**
     * 根据专利名找patent
     * @param name
     * @return
     */
    @RequestMapping("/searchPatentByName")
    public @ResponseBody
    List<PatentVO> searchPatentByName(@RequestParam String name) {
        return service.searchPatentByName(name);
    }

    /**
     * 获取专利池中patents
     * @param poolId
     * @return
     */
    @RequestMapping("/searchPatentByPool")
    public @ResponseBody
    List<PatentVO> searchPatentByPool(@RequestParam String poolId) {
        return service.searchPatentByPool(poolId);
    }

    /**
     * 获取同类别patents
     * @param patent_type
     * @return
     */
    @RequestMapping("/searchPatentsByType")
    public @ResponseBody
    List<PatentVO> searchPatentsByType(@RequestParam String patent_type) {
        return service.searchPatentsByType(patent_type);
    }

    /**
     * 获取指定日期的patents
     * @param StartDate
     * @param endDate
     * @return
     */
    @RequestMapping("/searchPatentsByApplyDate")
    public @ResponseBody
    List<PatentVO> searchPatentsByApplyDate(@RequestParam String StartDate, @RequestParam  String endDate) {
        return service.searchPatentsByApplyDate(StartDate ,endDate);
    }

    /**
     * 获取用户的专利列表patents
     * @param userId 用户Id   //即根据专利拥有者（Holder）获得专利
     * @return 专利列表
     */
    @RequestMapping("/getPatentList")
    @ResponseBody
    public List<PatentVO> getPatentList(@RequestParam String userId) {
        System.out.println(service.getPatentList(userId));
        return service.getPatentList(userId);
    }

    /**
     * 获取同状态的patents
     * @param state
     * @return
     */
    @RequestMapping("/searchPatentsByState")
    public @ResponseBody
    List<PatentVO> searchPatentsByState(@RequestParam Patent_state state){
        return  service.searchPatentsByState(state);
    }

    /**
     * 获取同地区的patents
     * @param region
     * @return
     */
    @RequestMapping("/searchPatentByRegion")
    public @ResponseBody  List<PatentVO> searchPatentByRegion(@RequestParam String region){
        return service.searchPatentByRegion(region);
    }

    /**
     * 通过指定时期获取patents
     * @param valid_period
     * @return
     */
    @RequestMapping("/searchPatentsByValid_period")
    public @ResponseBody  List<PatentVO> searchPatentsByValid_period(@RequestParam String valid_period){
        return service.searchPatentsByValid_period(valid_period);
    }

//2//  专利信息录入, 删除， 更新
    /**
     * 专利录入
     * @param patentID 专利号
     * @param patent 专利
     * @param holder 持有人(默认为userId)
     * @param url 专利相关图片url
     * @param applyTime 申请时间
     * @param type 专利类型
     * @param district 所属地区
     * @param profile 简介
     * @return
     */
    @RequestMapping("/entryPatent")
    @ResponseBody
    public ResultMessage entryPatent(String patentID, String patent, String userId , String holder,String url, String applyTime, String type, String district, String profile) {
        return service.entryPatent(patentID , patent, userId ,userId, url ,applyTime , type, district, profile);
    }

    /**
     * 通过id删除专利
     * @param patentID
     * @return
     */
    @RequestMapping("/deletePatent")
    public @ResponseBody
    Boolean deletePatent(@RequestParam String patentID) {
        return service.deletePatent(patentID);
    }

    /**
     * 更新专利状态
     * @param newState
     * @param patentID
     * @return
     * @throws IDNotExistsException
     */
    @RequestMapping("/updatePatentState")
    public @ResponseBody
    Boolean updatePatentState(@RequestParam Patent_state newState, @RequestParam String patentID) throws IDNotExistsException {
        return service.updatePatentState(newState, patentID);
    }

    /**
     * 更新专利信息
     * @param ipVo
     * @return
     */
    @RequestMapping("/updateIp")
    public @ResponseBody
    boolean updateIp(@RequestBody PatentVO ipVo) {
        return service.updateIp(ipVo);
    }

    /**
     * 更新专利持有人（持有人变更）
     * @param newHolder
     * @param patentID
     * @return
     * @throws IDNotExistsException
     */
    @RequestMapping("/updatePatentHolder")
    public @ResponseBody
    Boolean updatePatentHolder(@RequestParam String newHolder, @RequestParam String patentID) throws IDNotExistsException {
        return service.updatePatentHolder(newHolder, patentID);
    }

//3//  专利池相关

    /**
     * 专利退池
     * @param ipId
     * @param ipSetId
     * @throws IDNotExistsException
     */
    @RequestMapping("/exitIpSet")
    public @ResponseBody
    void exitIpSet(@RequestParam String ipId, @RequestParam String ipSetId) throws IDNotExistsException {
        service.exitIpSet(ipId, ipSetId);
    }

    /**
     * 专利拒绝入池
     * @param patentId
     * @param patentPoolId
     * @throws IDNotExistsException
     */
    @RequestMapping("/denyInvitationFromPool")
    public @ResponseBody void denyInvitationFromPool(@RequestParam String patentId , @RequestParam String patentPoolId) throws IDNotExistsException{
         service.denyInvitationFromPool(patentId , patentPoolId);
    }

    /**
     * 专利池邀请专利入池
     * @param patentId
     * @param patentPoolId
     * @throws IDNotExistsException
     */
    @RequestMapping("/sendInvitationFromPool")
    public @ResponseBody void sendInvitationFromPool(@RequestParam String patentId, @RequestParam String patentPoolId) throws IDNotExistsException{
         service.sendInvitationFromPool(patentId , patentPoolId);
    }

    /**
     * 专利同意入池
     * @param patentId
     * @param patentPoolId
     * @return
     * @throws IDNotExistsException
     */
    @RequestMapping("/acceptInvitationFromPool")
    public @ResponseBody boolean acceptInvitationFromPool(@RequestParam String patentId ,@RequestParam String patentPoolId) throws IDNotExistsException{
          return service.acceptInvitationFromPool(patentId , patentPoolId);
    }

//4//  推荐
    /**
     * 推荐相关专利;
     * @return
     */
    @RequestMapping("/searchRelatedPatents")
    @ResponseBody
    public List<PatentVO> searchRelatedPatents(){
        return service.searchRelatedPatents();
    }

    @RequestMapping("/recommendPatent")
    public @ResponseBody List<PatentVO> recommendPatent(){
        return service.recommendPatent();
    }

    @RequestMapping("/receiveInvitation")
    public @ResponseBody List<Invitation> receiveInvitation(@RequestParam String userId) {
        return service.receiveInvitation(userId);
    }

}
