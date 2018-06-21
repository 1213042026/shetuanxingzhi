package org.ares.mapper;


import org.ares.entity.Column;
import org.springframework.stereotype.Repository;

@Repository
public interface IColumnMapper {
	public int insertColumn(Column column); 
}
