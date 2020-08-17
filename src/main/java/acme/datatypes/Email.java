
package acme.datatypes;

import javax.persistence.Embeddable;
import javax.persistence.Transient;
import javax.validation.constraints.NotBlank;

import acme.framework.datatypes.DomainDatatype;
import lombok.Getter;
import lombok.Setter;

@Embeddable
@Getter
@Setter
public class Email extends DomainDatatype {

	/**
	 *
	 */
	private static final long	serialVersionUID	= 1L;

	private String				fullName;

	@NotBlank
	@javax.validation.constraints.Email
	private String				email;


	@Transient
	public String getEmailPattern() {
		String res = "";
		if (this.fullName == null || this.fullName == "") {
			res = this.email;
		} else {
			res = this.fullName + " <" + this.email + ">";
		}

		return res;
	}

}
