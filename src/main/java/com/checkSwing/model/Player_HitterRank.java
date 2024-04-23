package com.checkSwing.model;

import org.springframework.context.annotation.Primary;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@RequiredArgsConstructor
@Getter
@Setter
@ToString
public class Player_HitterRank {
	@NonNull private long id;         
	private double avg;
    private int avgRank;
    private double avgPercentile; // avgRank에 대한 백분위 값
    private double obp;
    private int obpRank;
    private double obpPercentile; // obpRank에 대한 백분위 값
    private double slg;
    private int slgRank;
    private double slgPercentile; // slgRank에 대한 백분위 값
    private double ops;
    private int opsRank;
    private double opsPercentile; // opsRank에 대한 백분위 값
    private double rbi;
    private int rbiRank;
    private double rbiPercentile; // rbiRank에 대한 백분위 값
    private int homerun;
    private int hrRank;
    private double hrPercentile; // hrRank에 대한 백분위 값
}
