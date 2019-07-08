package i.e.ramos.dao;


import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import i.e.ramos.model.Candidate;

@Repository
public interface CandidateDAO extends PagingAndSortingRepository <Candidate, Long>{
	
	@Query(value="SELECT * FROM Candidates C WHERE (?1 is NULL OR C.dni=?1) AND (?2 IS NULL OR C.name=?2) AND (?3 IS NULL OR C.lastName=?3)",nativeQuery=true)
	List<Candidate> findByFilter(String dni, String name, String lastName, Pageable page);
	
}
