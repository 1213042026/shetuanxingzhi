package org.ares.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public interface IDeleteColumnMapper {
	public void deleteColumn(Long id);
	public List sonList(Long id); 
}
