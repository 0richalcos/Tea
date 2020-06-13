package com.Tea.cn;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;


@Mapper
public interface IndentMapper{
	/*
	 * 增
	 */
	@Insert("insert into indent(name,size ,sugar ,oC,dosings) values(#{name},#{size},#{sugar},#{oC},#{dosings})")
	void save(Indent i);
		
	
	/*
	 * 删
	 */
	@Delete("delete from indent where id = #{id}")
	void remove(int id);
	
	
	/*
	 * 改
	 */
	@Update("update indent set name=#{name},size=#{size},sugar=#{sugar},oC=#{oC},dosings=#{dosings},finish=#{finish} where id=#{id}")
	void update(Indent i);
	
	
	/*
	 * 查
	 */
	@Select("select * from indent where finish=0")
	List<Indent> findAll();
	
	@Select("select * from indent where finish=1")
	List<Indent> findAll2();
	
	@Select("select * from indent where finish=1 and name='红茶' ")
	List<Indent> findAll3();
	
	@Select("select * from indent where finish=1 and name='柠檬茶' ")
	List<Indent> findAll4();
	
	@Select("select * from indent where finish=1 and name='绿茶' ")
	List<Indent> findAll5();
	
	@Select("select * from indent where finish=1 and name='柚子茶' ")
	List<Indent> findAll6();
	
	@Select("select * from indent where finish=1 and name='茉莉花茶' ")
	List<Indent> findAll7();
	
	@Select("select * from indent where finish=1 and name='黄茶' ")
	List<Indent> findAll8();
	
	@Select("select * from indent where finish=1 and name='苦丁茶' ")
	List<Indent> findAll9();
	
	@Select("select * from indent where id = #{id}")
	Indent load(int id);

}
