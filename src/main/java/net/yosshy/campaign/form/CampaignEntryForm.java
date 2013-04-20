package net.yosshy.campaign.form;


import java.io.Serializable;
import java.util.Map;

import org.seasar.framework.container.annotation.tiger.Component;
import org.seasar.framework.container.annotation.tiger.InstanceType;
import org.seasar.struts.annotation.EmailType;
import org.seasar.struts.annotation.IntegerType;
import org.seasar.struts.annotation.Required;

@Component(instance = InstanceType.SESSION)
public class CampaignEntryForm implements Serializable{

	private static final long serialVersionUID = 1L;

    public Map<String, String> prefectureMap;

    public Map<String, String> goodsMap;

    public Map<String, String> ageMap;

    public Map<String, String> sexMap;


	public String seq = "";

	@Required
	public String goodsCode = "";

	@Required
	public String lastName = "";

	@Required
	public String firstName = "";

	@Required
	public String lastNameKana = "";

	@Required
	public String firstNameKana = "";

	@Required
	@IntegerType
	public String zipCode = "";

	@Required
	public String prefectureCode = "";

	@Required
	public String address1 = "";

	public String address2 = "";

	public String ageType = "";

	public String sexType = "";

	@Required
	@IntegerType
	public String tel1 = "";

	@Required
	@IntegerType
	public String tel2 = "";

	@Required
	@IntegerType
	public String tel3 = "";

	@Required
    @EmailType
	public String email = "";

	public String emailContactFlag = "";

	public String createDate = "";

	public String createUser = "";

	public String modifyDate = "";

	public String modifyUser = "";


}