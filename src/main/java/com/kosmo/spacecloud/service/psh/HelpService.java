package com.kosmo.spacecloud.service.psh;

import java.util.List;
import java.util.Map;

public interface HelpService {

	List<HelpDTO> selectList(Map map);
	//전체 레코드 수]
	int getTotalCount(Map map);
}
