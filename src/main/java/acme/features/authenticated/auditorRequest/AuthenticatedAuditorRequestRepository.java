/*
 * AuthenticatedProviderRepository.java
 *
 * Copyright (c) 2019 Rafael Corchuelo.
 *
 * In keeping with the traditional purpose of furthering education and research, it is
 * the policy of the copyright owner to permit non-commercial use and redistribution of
 * this software. It has been tested carefully, but it is not guaranteed for any particular
 * purposes. The copyright owner does not offer any warranties or representations, nor do
 * they accept any liabilities with respect to them.
 */

package acme.features.authenticated.auditorRequest;

import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import acme.entities.auditorRequests.AuditorRequest;
import acme.entities.roles.Auditor;
import acme.framework.entities.Authenticated;
import acme.framework.repositories.AbstractRepository;

@Repository
public interface AuthenticatedAuditorRequestRepository extends AbstractRepository {

	@Query("select a from Authenticated a where a.userAccount.id = ?1")
	Authenticated findOneAuthenticatedById(int id);

	@Query("select ar from AuditorRequest ar where ar.authenticated.userAccount.id = ?1 and ar.status != 'Rejected'")
	AuditorRequest findRequestById(int id);

	@Query("select a from Auditor a where a.userAccount.id = ?1")
	Auditor findAuditorByAuthenticatedId(int id);
}
