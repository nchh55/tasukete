package global.sesoc.tasukete.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Tasukete_user {
	private String userid;
	private String userpwd;
	private String username;
	private String userbirth;
	private String useremail;
	private String userphone;
	private String useraddress;
	private String disabled;
	private String pregnancy;
	private int compliment_count;
	private String matching_flag;
	private String remark;
}
