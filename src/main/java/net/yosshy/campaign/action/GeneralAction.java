package net.yosshy.campaign.action;

import java.util.Date;


import javax.annotation.Resource;

import org.apache.struts.action.ActionMessages;
import org.seasar.framework.beans.util.Beans;
import org.seasar.struts.annotation.ActionForm;
import org.seasar.struts.annotation.Execute;
import java.util.List;

import org.seasar.extension.jdbc.JdbcManager;
import org.seasar.extension.jdbc.where.SimpleWhere;

import net.yosshy.campaign.entity.General;
import net.yosshy.campaign.service.GeneralService;
import net.yosshy.campaign.form.GeneralForm;

public class GeneralAction {


    public List<General> generalItems;
    
    @ActionForm
    @Resource
    protected GeneralForm generalForm;

    @Resource
    protected GeneralService generalService;

    public JdbcManager jdbcManager;

    @Execute(validator = false)
    public String index() {
        generalItems = generalService.findAll();

        return "list.jsp";
    }





    @Execute(validator = false, urlPattern = "show/{code1}/{code2}")
    public String show() {
        General entity = generalService.findById(generalForm.code1, generalForm.code2);
        Beans.copy(entity, generalForm).dateConverter("yyyy-MM-dd").execute();
        return "show.jsp";
    }

    @Execute(validator = false, urlPattern = "edit/{code1}/{code2}")
    public String edit() {
        General entity = generalService.findById(generalForm.code1, generalForm.code2);
        Beans.copy(entity, generalForm).dateConverter("yyyy-MM-dd").execute();
        return "edit.jsp";
    }

    @Execute(validator = false)
    public String create() {
        return "create.jsp";
    }

    @Execute(validator = false, urlPattern = "delete/{code1}/{code2}", redirect = true)
    public String delete() {
        General entity = Beans.createAndCopy(General.class, generalForm).dateConverter("yyyy-MM-dd").execute();
        generalService.delete(entity);
        return "/general/";
    }

    @Execute(input = "create.jsp", redirect = true)
    public String insert() {
        General entity = Beans.createAndCopy(General.class, generalForm).dateConverter("yyyy-MM-dd").execute();
        generalService.insert(entity);
        return "/general/";
    }

    @Execute(input = "edit.jsp", redirect = true)
    public String update() {
        General entity = Beans.createAndCopy(General.class, generalForm).dateConverter("yyyy-MM-dd").execute();
        generalService.update(entity);
        return "/general/";
    }
}