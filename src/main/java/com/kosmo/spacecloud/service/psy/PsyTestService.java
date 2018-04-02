package com.kosmo.spacecloud.service.psy;

import java.util.List;
import java.util.Map;

public interface PsyTestService {
	
		List<PsyTestDTO> selectList();
		List<PsyTestDTO> reserveView();
		List<PsyTestDTO> reserveViewReserver();
		List<PsyTestDTO> reserveViewRefund();
		List<PsyTestDTO> reserveViewSpace();
		List<PsyTestDTO> reserveViewMoney();
}
