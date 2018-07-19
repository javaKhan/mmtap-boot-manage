package com.mmtap.boot.dao;

import com.mmtap.boot.base.XbootBaseDao;
import com.mmtap.boot.entity.UserRole;

import java.util.List;

/**
 * 用户角色数据处理层
 * @author mmtap.com
 */
public interface UserRoleDao extends XbootBaseDao<UserRole,String> {

    /**
     * 通过roleId查找
     * @param roleId
     * @return
     */
    List<UserRole> findByRoleId(String roleId);

    /**
     * 删除用户角色
     * @param userId
     */
    void deleteByUserId(String userId);
}
