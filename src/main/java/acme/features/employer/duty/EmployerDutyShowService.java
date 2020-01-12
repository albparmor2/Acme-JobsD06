
package acme.features.employer.duty;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import acme.entities.jobs.Duty;
import acme.entities.jobs.Job;
import acme.entities.roles.Employer;
import acme.framework.components.Model;
import acme.framework.components.Request;
import acme.framework.entities.Principal;
import acme.framework.services.AbstractShowService;

@Service
public class EmployerDutyShowService implements AbstractShowService<Employer, Duty> {

	@Autowired
	EmployerDutyRepository repository;


	@Override
	public boolean authorise(final Request<Duty> request) {
		assert request != null;

		boolean result;
		int dutyId;
		Job job;
		Principal principal;

		dutyId = request.getModel().getInteger("id");
		job = this.repository.findJobByDutyId(dutyId);
		principal = request.getPrincipal();
		result = job.getEmployer().getUserAccount().getId() == principal.getAccountId();

		return result;
	}

	@Override
	public void unbind(final Request<Duty> request, final Duty entity, final Model model) {
		assert request != null;
		assert entity != null;
		assert model != null;

		Boolean jobIsFinalMode;
		int dutyId;
		Job job;

		dutyId = request.getModel().getInteger("id");
		job = this.repository.findJobByDutyId(dutyId);
		jobIsFinalMode = job.isFinalMode();
		model.setAttribute("jobIsFinalMode", jobIsFinalMode);

		request.unbind(entity, model, "title", "description", "percentage");

	}

	@Override
	public Duty findOne(final Request<Duty> request) {
		assert request != null;

		Duty result;
		int id;

		id = request.getModel().getInteger("id");
		result = this.repository.findOneDutyById(id);

		return result;
	}

}
