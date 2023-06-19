package MotelMap.model.Dto;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperMotel implements RowMapper<motelDto>{

	public motelDto mapRow(ResultSet rs, int rowNum) throws SQLException {
		motelDto motelDtos = new motelDto();
		
		motelDtos.setId(rs.getInt("id"));
		motelDtos.setLatitude(rs.getDouble("latitude"));
		motelDtos.setLongitude(rs.getDouble("longitude"));
		motelDtos.setImage(rs.getString("image"));
		motelDtos.setNameInnkeepers(rs.getString("nameinkeeper"));
		motelDtos.setDescription(rs.getString("description"));
		motelDtos.setAddress(rs.getString("address"));
		motelDtos.setPhone(rs.getString("phone"));
		motelDtos.setPrice(rs.getDouble("price"));

		return motelDtos;
	}
	
}
