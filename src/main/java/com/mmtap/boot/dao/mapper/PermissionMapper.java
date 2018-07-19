package com.mmtap.boot.dao.mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.mmtap.boot.entity.Permission;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author mmtap.com
 */
public interface PermissionMapper extends BaseMapper<Permission> {

    /**
     * 通过用户id获取
     * @param userId
     * @return
     */
    List<Permission> findByUserId(@Param("userId") String userId);

    /**
     * 通过roleId获取
     * @param roleId
     * @return
     */
    List<Permission> findByRoleId(@Param("roleId") String roleId);
}
