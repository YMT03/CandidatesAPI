package i.e.ramos.service;

import java.util.List;
import i.e.ramos.model.Candidate;

public interface CandidateService {
	
	List<Candidate> getAll(Integer pageNumber, Integer rows);
	List<Candidate> findByFilter(Integer pageNumber, Integer rows, String dni, String name, String lastName);
	Candidate getById(Long id);
	Candidate insert(Candidate candidate);
	Candidate update(Candidate candidate);
	Candidate partialUpdate(Candidate candidate);
	void delete(Long id);

}
