package com.mmtap.boot.service;


import com.mmtap.boot.base.XbootBaseService;
import com.mmtap.boot.entity.UserRole;

import java.util.List;

/**
 * 用户角色接口
 * @author mmtap.com
 */
public interface UserRoleService extends XbootBaseService<UserRole,String> {

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
