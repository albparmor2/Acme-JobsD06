
package acme.features.administrator.dashboard;

import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import acme.framework.repositories.AbstractRepository;

@Repository
public interface AdministratorDashboardRepository extends AbstractRepository {

	@Query("SELECT count(*) FROM Announcement")
	Integer getTotalAnnouncements();

	@Query("SELECT count(*) FROM CompanyRecord")
	Integer getTotalCompanyRecords();

	@Query("SELECT count(*) FROM InvestorRecord")
	Integer getTotalInvestorRecords();

	@Query("SELECT count(*) From Job")
	Double getJobs();

	@Query("SELECT count(*) From Application")
	Double getApplications();

	@Query("SELECT count(*) From Employer")
	Double getEmployers();

	@Query("SELECT count(*) From Worker")
	Double getWorkers();
}
