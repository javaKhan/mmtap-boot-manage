package com.mmtap.boot.config.security;

import cn.hutool.core.collection.CollUtil;
import com.mmtap.boot.common.constant.CommonConstant;
import com.mmtap.boot.entity.Permission;
import com.mmtap.boot.entity.User;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/**
 * @author mmtap.com
 */
@Slf4j
public class SecurityUserDetails extends User implements UserDetails {

    private static final long serialVersionUID = 1L;

    public SecurityUserDetails(User user) {

        if(user!=null) {
            this.setUsername(user.getUsername());
            this.setPassword(user.getPassword());
            this.setStatus(user.getStatus());
            this.setRoles(user.getRoles());
            this.setPermissions(user.getPermissions());
        }
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {

        List<GrantedAuthority> authorityList = new ArrayList<>();
        List<Permission> permissions = this.getPermissions();
        if(CollUtil.isNotEmpty(permissions)&&permissions.get(0)!=null){
            for (Permission permission : permissions) {
                authorityList.add(new SimpleGrantedAuthority(permission.getTitle()));
            }
        }
        return authorityList;
    }

    /**
     * 账户是否过期
     * @return
     */
    @Override
    public boolean isAccountNonExpired() {

        return true;
    }

    /**
     * 是否禁用
     * @return
     */
    @Override
    public boolean isAccountNonLocked() {

        return CommonConstant.USER_STATUS_LOCK.equals(this.getStatus()) ? false : true;
    }

    /**
     * 密码是否过期
     * @return
     */
    @Override
    public boolean isCredentialsNonExpired() {

        return true;
    }

    /**
     * 是否启用
     * @return
     */
    @Override
    public boolean isEnabled() {

        return CommonConstant.USER_STATUS_NORMAL.equals(this.getStatus()) ? true : false;
    }
}