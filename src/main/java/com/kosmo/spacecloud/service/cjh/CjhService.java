package com.kosmo.spacecloud.service.cjh;

import java.util.List;
import java.util.Map;

public interface CjhService {
	List<CjhDTO> selectList();
	
	int insertSpace(CjhDTO dto);
	int insertReserveInfo(CjhDTO dto);
	
	CjhDTO selectRecentSpace();
	
	int updateSpaceImg(Map map);
}
