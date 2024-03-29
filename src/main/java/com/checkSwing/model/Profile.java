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
public class Profile {
	@NonNull private long id;
	@NonNull private String name;
	private String team;
	@NonNull private String birth;
	@NonNull private String position;
	private int bnum;
}
