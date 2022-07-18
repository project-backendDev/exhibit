package com.project.exhibit.admin;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AdminMapper {

	Admin selectAdminCheck(String admin_id, String admin_pw);
}
