package MotelMap.model.Service;
import java.util.List;

import org.springframework.stereotype.Service;

import MotelMap.model.Dto.motelDto;


@Service
public interface IMotelService {
	public List<motelDto> getAllData();
	public void save(motelDto m);
	public void delete(int id);
}
