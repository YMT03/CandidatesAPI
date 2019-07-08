package i.e.ramos.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import i.e.ramos.dao.CandidateDAO;
import i.e.ramos.exceptions.CandidateNotFoundException;
import i.e.ramos.model.Candidate;

@Service
public class CandidateServiceImp implements CandidateService {

	@Autowired
	private CandidateDAO candidateDAO;

	@Override
	public List<Candidate> getAll(Integer pageNumber, Integer rows) {
		return candidateDAO.findAll(PageRequest.of(pageNumber, rows)).getContent();
	}

	@Override
	public Candidate getById(Long id) {
		return candidateDAO.findById(id).orElseThrow(CandidateNotFoundException::new);
	}

	@Override
	public Candidate insert(Candidate candidate) {
		return candidateDAO.save(candidate);
	}

	@Override
	public Candidate update(Candidate candidate) {
		if(candidateDAO.existsById(candidate.getId())) //Update only if exists.
			return candidateDAO.save(candidate);
		throw new CandidateNotFoundException(); //If not exists avoid inserting new candidate. If needed use POST method instead.
	}
	

	@Override
	public Candidate partialUpdate(Candidate inputCandidate) {
		Candidate candidate = candidateDAO.findById(inputCandidate.getId()).orElseThrow(CandidateNotFoundException::new);
		candidate.setAddress(inputCandidate.getAddress()!=null?inputCandidate.getAddress():candidate.getAddress());
		candidate.setDni(inputCandidate.getDni()!=null?inputCandidate.getDni():candidate.getDni());
		candidate.setName(inputCandidate.getName()!=null?inputCandidate.getName():candidate.getName());
		candidate.setLastName(inputCandidate.getLastName()!=null?inputCandidate.getLastName():candidate.getLastName());
		candidate.setMail(inputCandidate.getMail()!=null?inputCandidate.getMail():candidate.getMail());
		candidate.setPhone(inputCandidate.getPhone()!=null?inputCandidate.getPhone():candidate.getPhone());
		return candidateDAO.save(candidate);
	}

	@Override
	public void delete(Long id) {
		candidateDAO.delete(candidateDAO.findById(id).orElseThrow(CandidateNotFoundException::new));		
	}

	@Override
	public List<Candidate> findByFilter(Integer pageNumber, Integer rows, String dni, String name, String lastName) {
		Pageable page = PageRequest.of(pageNumber, rows);
		return candidateDAO.findByFilter(dni, name, lastName, page);
	}
	
	
	
	
		
	
	
	
}
