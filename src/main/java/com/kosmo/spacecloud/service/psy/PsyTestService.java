package com.kosmo.spacecloud.service.psy;

import java.util.List;
import java.util.Map;

public interface PsyTestService {
	
		List<PsyTestDTO> selectList();
		List<PsyTestDTO> reserveView(String rn);
		List<PsyTestDTO> reserveViewReserver(String rn);
		List<PsyTestDTO> reserveViewRefund(String sn);
		List<PsyTestDTO> reserveViewSpace(String sn);
		List<PsyTestDTO> reserveViewMoney(String rn);
}
