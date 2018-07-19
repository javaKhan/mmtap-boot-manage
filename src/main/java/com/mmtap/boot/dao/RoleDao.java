package com.mmtap.boot.dao;

import com.mmtap.boot.base.XbootBaseDao;
import com.mmtap.boot.entity.Role;

import java.util.List;

/**
 * 角色数据处理层
 * @author mmtap.com
 */
public interface RoleDao extends XbootBaseDao<Role,String> {

    /**
     * 获取默认角色
     * @param defaultRole
     * @return
     */
    List<Role> findByDefaultRole(Boolean defaultRole);
}
