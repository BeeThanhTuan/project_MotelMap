package MotelMap.model.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import MotelMap.model.Dto.motelDto;
import MotelMap.model.dao.MotelDAO;

@Service
public class motelServiceIplm implements IMotelService{

	@Autowired
	private MotelDAO _MotelDAO;
	
	@Override
	public List<motelDto> getAllData() {	
		return _MotelDAO.getAllDataMotel();
	}
	public void save(motelDto m) {
		_MotelDAO.AddMotel(m);
	}
	public void delete(int id) {
		_MotelDAO.DeleteMotel(id);
	}
}
