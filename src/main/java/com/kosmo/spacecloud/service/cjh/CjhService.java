package com.kosmo.spacecloud.service.cjh;

import java.util.List;

public interface CjhService {
	List<CjhDTO> selectList();
	
	int insertSpace(CjhDTO dto);
	int insertReserveInfo(CjhDTO dto);
	
}
