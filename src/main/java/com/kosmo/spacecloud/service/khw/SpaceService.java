package com.kosmo.spacecloud.service.khw;

import java.util.List;

public interface SpaceService {

	List<SpaceDTO> selectList(String searchWord);
}
