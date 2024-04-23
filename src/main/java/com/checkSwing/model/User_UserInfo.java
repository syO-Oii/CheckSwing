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
public class User_UserInfo {
	@NonNull private long num;
	@NonNull private String id;
	@NonNull private String password;
	@NonNull private String name;
	private String team;
	@NonNull private String birth;
	private String phoneNumber;
}
