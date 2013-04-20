package net.yosshy.campaign.action;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import net.yosshy.campaign.entity.CampaignEntry;
import net.yosshy.campaign.form.CampaignEntryForm;
import net.yosshy.campaign.service.CampaignEntryService;
import net.yosshy.campaign.service.GeneralService;

import org.seasar.extension.jdbc.JdbcManager;
import org.seasar.framework.beans.util.Beans;
import org.seasar.struts.annotation.ActionForm;
import org.seasar.struts.annotation.Execute;

public class CampaignEntryAction {

	public List<CampaignEntry> campaignEntryItems;

	@ActionForm
	@Resource
	protected CampaignEntryForm campaignEntryForm;

	@Resource
	protected CampaignEntryService campaignEntryService;

	@Resource
	protected GeneralService generalService;

	public JdbcManager jdbcManager;

	@Execute(validator = false)
	public String index() {
		campaignEntryItems = campaignEntryService.findAll();

		return "list.jsp";
	}

	@Execute(validator = false, urlPattern = "show/{seq}")
	public String show() {
		CampaignEntry entity = campaignEntryService.findById(new java.math.BigDecimal(campaignEntryForm.seq));
		Beans.copy(entity, campaignEntryForm).dateConverter("yyyy-MM-dd").execute();
		return "show.jsp";
	}

	@Execute(validator = false, urlPattern = "edit/{seq}")
	public String edit() {
		CampaignEntry entity = campaignEntryService.findById(new java.math.BigDecimal(campaignEntryForm.seq));
		Beans.copy(entity, campaignEntryForm).dateConverter("yyyy-MM-dd").execute();
		return "edit.jsp";
	}

	@Execute(validator = false)
	public String create() {

		Beans.copy(new CampaignEntryForm(), campaignEntryForm).execute();
		campaignEntryForm.prefectureMap = generalService.getOptions(GeneralService.PREFECTURE_LIST);
		campaignEntryForm.goodsMap = generalService.getOptions(GeneralService.GOODS_LIST);
		campaignEntryForm.ageMap = generalService.getOptions(GeneralService.AGE_LIST);
		campaignEntryForm.sexMap = generalService.getOptions(GeneralService.SEX_LIST);
		return "create.jsp";
	}

	@Execute(input = "create.jsp")
	public String confirm() {

		return "confirm.jsp";
	}

	@Execute(validator = false)
	public String back() {
		return "create.jsp";
	}


	@Execute(validator = false, urlPattern = "delete/{seq}", redirect = true)
	public String delete() {
		CampaignEntry entity = Beans.createAndCopy(CampaignEntry.class, campaignEntryForm).dateConverter("yyyy-MM-dd")
				.execute();
		campaignEntryService.delete(entity);
		return "/campaignEntry/";
	}

	@Execute(input = "create.jsp")
	public String insert() {
		CampaignEntry entity = Beans.createAndCopy(CampaignEntry.class, campaignEntryForm).dateConverter("yyyy-MM-dd")
				.execute();
		entity.createUser = "SYSTEM";
		entity.modifyUser = "SYSTEM";
		entity.createDate = new Date();
		entity.modifyDate = new Date();
		campaignEntryService.insert(entity);
		return "complete.jsp";
	}

	@Execute(input = "edit.jsp", redirect = true)
	public String update() {
		CampaignEntry entity = Beans.createAndCopy(CampaignEntry.class, campaignEntryForm).dateConverter("yyyy-MM-dd")
				.execute();
		campaignEntryService.update(entity);
		return "/campaignEntry/";
	}
}