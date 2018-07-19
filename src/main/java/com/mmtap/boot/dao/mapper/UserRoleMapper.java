package com.mmtap.boot.dao.mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.mmtap.boot.entity.Role;
import com.mmtap.boot.entity.UserRole;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author mmtap.com
 */
public interface UserRoleMapper extends BaseMapper<UserRole> {

    /**
     * 通过用户id获取
     * @param userId
     * @return
     */
    List<Role> findByUserId(@Param("userId") String userId);
}
