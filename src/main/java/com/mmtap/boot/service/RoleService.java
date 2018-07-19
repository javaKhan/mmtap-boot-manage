package com.mmtap.boot.service;


import com.mmtap.boot.base.XbootBaseService;
import com.mmtap.boot.entity.Role;

import java.util.List;

/**
 * 角色接口
 * @author mmtap.com
 */
public interface RoleService extends XbootBaseService<Role,String> {

    /**
     * 获取默认角色
     * @param defaultRole
     * @return
     */
    List<Role> findByDefaultRole(Boolean defaultRole);
}
