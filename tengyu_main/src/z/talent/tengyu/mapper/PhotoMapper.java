package z.talent.tengyu.mapper;

import org.apache.ibatis.annotations.Param;

public interface PhotoMapper {

	
	public int getNumber();
	
	public boolean updateNumber(@Param("id")int id);

}

