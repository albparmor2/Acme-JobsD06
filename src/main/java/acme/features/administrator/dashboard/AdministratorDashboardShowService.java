
package acme.features.administrator.dashboard;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import acme.forms.Dashboard;
import acme.framework.components.Model;
import acme.framework.components.Request;
import acme.framework.entities.Administrator;
import acme.framework.services.AbstractShowService;

@Service
public class AdministratorDashboardShowService implements AbstractShowService<Administrator, Dashboard> {

	@Autowired
	AdministratorDashboardRepository repository;


	@Override
	public boolean authorise(final Request<Dashboard> request) {
		assert request != null;

		return true;
	}

	@Override
	public void unbind(final Request<Dashboard> request, final Dashboard entity, final Model model) {
		assert request != null;
		assert entity != null;
		assert model != null;

		request.unbind(entity, model, "totalAnnouncements", "totalCompanyRecords", "totalInvestorRecords", "averageJobsEmployer", "averageApplicationEmployer", "averageApplicationWorker");
	}

	@Override
	public Dashboard findOne(final Request<Dashboard> request) {
		assert request != null;

		Dashboard d = new Dashboard();

		Integer totalAnnouncements = this.repository.getTotalAnnouncements();
		d.setTotalAnnouncements(totalAnnouncements);
		Integer totalCompanyRecords = this.repository.getTotalCompanyRecords();
		d.setTotalCompanyRecords(totalCompanyRecords);
		Integer totalInvestorRecords = this.repository.getTotalInvestorRecords();
		d.setTotalInvestorRecords(totalInvestorRecords);

		Double avgJobsEmployer = this.repository.getJobs() / this.repository.getEmployers();
		d.setAverageJobsEmployer(avgJobsEmployer);
		Double avgApplicationEmployer = this.repository.getApplications() / this.repository.getEmployers();
		d.setAverageApplicationEmployer(avgApplicationEmployer);
		Double avgApplicationWorker = this.repository.getApplications() / this.repository.getWorkers();
		d.setAverageApplicationWorker(avgApplicationWorker);

		return d;
	}

}
