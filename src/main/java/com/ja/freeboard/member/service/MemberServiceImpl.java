package com.ja.freeboard.member.service;

import java.security.MessageDigest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ja.freeboard.mapper.HobbySQLMapper;
import com.ja.freeboard.mapper.MemberSQLMapper;
import com.ja.freeboard.vo.MemberVo;


@Service
public class MemberServiceImpl {
	
	@Autowired
	private MemberSQLMapper memberSQLMapper;
	
	@Autowired
	private HobbySQLMapper hobbySQLMapper;
	
	public void joinMember(MemberVo vo, int [] member_hobby) {
		
		//비밀번호 해싱....
		try {
			
			String hashCode = "";
			
			StringBuilder sb = new StringBuilder();
			
			MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
					
			messageDigest.reset();
			messageDigest.update(vo.getMember_pw().getBytes());
			
			byte[] chars = messageDigest.digest();
			
			for(int i=0;i<chars.length;i++) {
				
				String tmp = Integer.toHexString(chars[i] & 0xff);
				
				if(tmp.length()==1) {
					sb.append("0");
				}
				
				sb.append(tmp);
			}
			hashCode = sb.toString();
			
			vo.setMember_pw(hashCode); 
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		//DB 연동..
		
		
		
		
		int member_key = memberSQLMapper.createKey();
		vo.setMember_no(member_key);
		memberSQLMapper.insert(vo);
		
		if(member_hobby == null) {
			return;
		}
		
		
		for(int hobby : member_hobby) {
			hobbySQLMapper.insert(member_key, hobby);
			
		}
		
	}
	
	public MemberVo login(MemberVo vo) {
		
		return memberSQLMapper.selectByIdAndPw(vo);
		
		
	}

}
