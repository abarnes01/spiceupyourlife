package scrum15.com.repo;

import org.springframework.data.repository.CrudRepository;

import scrum15.com.model.MiniStarterKit;

public interface MiniStarterKitRepo extends CrudRepository<MiniStarterKit, Integer>{
	public MiniStarterKit findBySpice(String spice);
}
