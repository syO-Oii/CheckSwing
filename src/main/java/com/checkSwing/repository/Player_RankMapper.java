package com.checkSwing.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.checkSwing.model.Player_HitterRank;
import com.checkSwing.model.Player_HitterStatus;
import com.checkSwing.model.Player_PitcherRank;
import com.checkSwing.model.Player_PitcherStatus;
import com.checkSwing.model.Player_Profile;

@Mapper
public interface Player_RankMapper {
	@Select("SELECT * FROM ("
	        + "SELECT id, "
	        	+ "avg, (SELECT COUNT(*) FROM HitterStatus h2 WHERE h2.avg > h1.avg) + 1 AS avg_rank, "
	        	+ "obp, (SELECT COUNT(*) FROM HitterStatus h3 WHERE h3.obp > h1.obp) + 1 AS obp_rank, "
	        	+ "slg, (SELECT COUNT(*) FROM HitterStatus h4 WHERE h4.slg > h1.slg) + 1 AS slg_rank, "
	        	+ "ops, (SELECT COUNT(*) FROM HitterStatus h5 WHERE h5.ops > h1.ops) + 1 AS ops_rank, "
	        	+ "rbi, (SELECT COUNT(*) FROM HitterStatus h6 WHERE h6.rbi > h1.rbi) + 1 AS rbi_rank, "
	        	+ "homerun, (SELECT COUNT(*) FROM HitterStatus h7 WHERE h7.homerun > h1.homerun) + 1 AS hr_rank "
	        + "FROM HitterStatus h1) "
	        + "WHERE id = #{id}")
	List<Player_HitterRank> getHitterRankById(@Param("id") int id);
	
	@Select("SELECT * FROM ("
	        + "SELECT id, "
        	+ "avg, (SELECT COUNT(*) FROM HitterStatus h2 WHERE h2.avg > h1.avg) + 1 AS avg_rank, "
        	+ "obp, (SELECT COUNT(*) FROM HitterStatus h3 WHERE h3.obp > h1.obp) + 1 AS obp_rank, "
        	+ "slg, (SELECT COUNT(*) FROM HitterStatus h4 WHERE h4.slg > h1.slg) + 1 AS slg_rank, "
        	+ "ops, (SELECT COUNT(*) FROM HitterStatus h5 WHERE h5.ops > h1.ops) + 1 AS ops_rank, "
        	+ "rbi, (SELECT COUNT(*) FROM HitterStatus h6 WHERE h6.rbi > h1.rbi) + 1 AS rbi_rank, "
        	+ "homerun, (SELECT COUNT(*) FROM HitterStatus h7 WHERE h7.homerun > h1.homerun) + 1 AS hr_rank "
	        + "FROM HitterStatus h1) ")
	List<Player_HitterRank> getRank();
	
	@Select("SELECT COUNT(*) FROM HitterStatus")
	int countHitterRank();
	
	@Select("SELECT COUNT(*) FROM PitcherStatus")
	int countPitcherRank();
	
	@Select("SELECT * FROM ("
	        + "SELECT id, "
	        + "bb,  (SELECT COUNT(*) FROM PitcherStatus h2 WHERE h2.bb > h1.bb) + 1 AS bb_rank, "
	        + "so,  (SELECT COUNT(*) FROM PitcherStatus h3 WHERE h3.so > h1.so) + 1 AS so_rank, "
	        + "era, (SELECT COUNT(*) FROM PitcherStatus h4 WHERE h4.era > h1.era) + 1 AS era_rank "
	        + "FROM PitcherStatus h1) "
	        + "WHERE id = #{id}")
	List<Player_PitcherRank> getPitcherRankById(@Param("id") int id);
}
