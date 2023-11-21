package website.main;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class FieldValidator {
	Map<String, String> ruleMap = new HashMap();

	public FieldValidator() {
		ruleMap.put("fullname", "^[A-Z][a-zA-Z]+( [A-Z][a-zA-Z]+)+$");
		ruleMap.put("username", "^[a-zA-Z1-9]+$");
		ruleMap.put("email", "^[\\w-\\.]+@([\\w-]+\\.)+[\\w-]{2,4}$");
		ruleMap.put("phonenumber", "^0?[6,7,8][0-9]{7}$");
		ruleMap.put("password", "[A-Za-z0-9]{8,20}");
	}

	public List<String> validateMap(Map<String, String[]> requestMap) {

		List<String> errorList = new ArrayList();
		for (String field : requestMap.keySet()) {
			if (!requestMap.get(field)[0].matches(ruleMap.get(field))) {
				errorList.add("Invalid field: " + field);
			}
		}

//		if (!value.matches("[A-Za-z]+ [A-Za-z]+")) {
//			return "Full name must contain at least 2 words, only Latin";
//		}
		return errorList;
	}
	
}
