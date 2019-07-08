package i.e.ramos.controller;

import java.util.List;
import java.util.stream.Collectors;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import i.e.ramos.dto.CandidateDTO;
import i.e.ramos.model.Candidate;
import i.e.ramos.model.form.FullValidCandidate;
import i.e.ramos.model.form.PartialValidCandidate;
import i.e.ramos.service.CandidateService;

@RestController
@RequestMapping("/candidates")
public class CandidateController {
	
	@Autowired
	private CandidateService candidateService;
	
	@GetMapping
	public ResponseEntity<List<CandidateDTO>> getCandidates(@RequestParam(defaultValue="0") Integer currentPage, 
												  @RequestParam (defaultValue="10") Integer pageSize,
												  @RequestParam (required=false) String dni,
												  @RequestParam (required=false) String name,
												  @RequestParam (required=false) String lastName) {
		if(dni==null&&name==null&&lastName==null)
			return ResponseEntity.ok(candidateService.getAll(currentPage, pageSize).stream().map(x->new CandidateDTO(x.getName(),x.getLastName(),x.getDni())).collect(Collectors.toList()));
		return ResponseEntity.ok(candidateService.findByFilter(currentPage, pageSize,dni,name,lastName).stream().map(x->new CandidateDTO(x.getName(),x.getLastName(),x.getDni())).collect(Collectors.toList()));
	}
	
	
	@GetMapping("/{id}")
	public ResponseEntity<Candidate> getById(@PathVariable Long id) {
		return ResponseEntity.ok(candidateService.getById(id));
	}
	
	@PostMapping
	public ResponseEntity<Candidate> insert(@Valid @RequestBody FullValidCandidate candidate) {
		return ResponseEntity.status(HttpStatus.CREATED).body(candidateService.insert(candidate.build()));
	}
	
	@DeleteMapping("{id}")
	public ResponseEntity delete(@PathVariable Long id) {
		candidateService.delete(id);
		return ResponseEntity.ok(null);
	}
	
	@PutMapping("{id}")
	public ResponseEntity<Candidate> replace(@PathVariable Long id, @Valid @RequestBody FullValidCandidate candidate) {
		candidate.setId(id);
		return ResponseEntity.ok(candidateService.update(candidate.build()));
	}
	
	@PatchMapping("{id}")
	public ResponseEntity<Candidate> modify(@PathVariable Long id, @Valid @RequestBody PartialValidCandidate candidate) {
		candidate.setId(id);
		return ResponseEntity.ok(candidateService.partialUpdate(candidate.build()));
	}

}
