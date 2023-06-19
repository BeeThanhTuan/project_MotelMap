package MotelMap.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import MotelMap.model.Dto.MapperMotel;
import MotelMap.model.Dto.motelDto;

@Repository
public class MotelDAO {

	@Autowired
	public JdbcTemplate _JbdcTemplate;
	
	private StringBuffer SqlString() {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT id, latitude, longitude, image, name_innkeepers  as nameinkeeper, description, address, phone, price FROM motelmap.motel ");
		return sql;
	}
	
	public List<motelDto> getAllDataMotel() {
		List<motelDto> motelDtos = new ArrayList<motelDto>();
		String sql = SqlString().toString();
		motelDtos = _JbdcTemplate.query(sql, new MapperMotel());
		return motelDtos;
	}
	
	public void AddMotel(motelDto motel) {
		String sql = "INSERT INTO motelmap.motel (latitude, longitude, name_innkeepers, description, address, phone, price) "
				  + "VALUES (?, ?, ?, ?, ?, ?, ?)";
		
	
	      _JbdcTemplate.update(sql, 
	    	        motel.getLatitude(), 
	    	        motel.getLongitude(), 
	    	        motel.getNameInnkeepers(), 
	    	        motel.getDescription(), 
	    	        motel.getAddress(), 
	    	        motel.getPhone(), 
	    	        motel.getPrice());
	}
	public void DeleteMotel(int id) {
		String sql = "DELETE FROM motelmap.motel WHERE id = ?";
	      _JbdcTemplate.update(sql, id);
	}
	
	public void UpdateMotel(motelDto motel) {
	    String sql = "UPDATE motelmap.motel SET latitude=?, longitude=?, name_innkeepers=?, description=?, address=?, phone=?, price=? WHERE id=?";
	    _JbdcTemplate.update(sql, 
	        motel.getLatitude(), 
	        motel.getLongitude(), 
	        motel.getNameInnkeepers(), 
	        motel.getDescription(), 
	        motel.getAddress(), 
	        motel.getPhone(), 
	        motel.getPrice(), 
	        motel.getId());
	}
}
