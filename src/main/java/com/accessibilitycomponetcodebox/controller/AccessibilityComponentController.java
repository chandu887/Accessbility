package com.accessibilitycomponetcodebox.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class AccessibilityComponentController {
	
	@Value("${spring.application.name}")
	private  String appName;

	// inject via application.properties
	@Value("${welcome.message:test}")
	private String message = "Hello World";

	@RequestMapping("/")
	public String welcome(Map<String, Object> model) {
		model.put("message", this.message);
		return "home";
	}
	
	@RequestMapping("/button")
	public String indexPage(Map<String, Object> model) {
		model.put("message", this.message);
		return "button";
	}
	
	@RequestMapping("/tab")
	public String tabPage(Map<String, Object> model) {
		model.put("message", this.message);
		return "tab";
	}
	
	@RequestMapping("/switch")
	public String switchPage(Map<String, Object> model) {
		model.put("message", this.message);
		return "switch";
	}
	@RequestMapping("/cell")
	public String cellPage(Map<String, Object> model) {
		model.put("message", this.message);
		return "cell";
	}
	@RequestMapping("/checkbox")
	public String checkBoxPage(Map<String, Object> model) {
		model.put("message", this.message);
		return "checkbox";
	}
	@RequestMapping("/columnheader")
	public String columnHeaderPage(Map<String, Object> model) {
		model.put("message", this.message);
		return "columnheader";
	}
	@RequestMapping("/gridcell")
	public String gridCellPage(Map<String, Object> model) {
		model.put("message", this.message);
		return "gridcell";
	}
	@RequestMapping("/heading")
	public String headingPage(Map<String, Object> model) {
		model.put("message", this.message);
		return "heading";
	}
	@RequestMapping("/link")
	public String linkPage(Map<String, Object> model) {
		model.put("message", this.message);
		return "link";
	}
	@RequestMapping("/menuitem")
	public String menuItemPage(Map<String, Object> model) {
		model.put("message", this.message);
		return "menuitem";
	}
	@RequestMapping("/menuitemcheckbox")
	public String menuItemCheckboxPage(Map<String, Object> model) {
		model.put("message", this.message);
		return "menuitemcheckbox";
	}
	@RequestMapping("/menuitemradio")
	public String menuItemRadioPage(Map<String, Object> model) {
		model.put("message", this.message);
		return "menuitemradio";
	}
	@RequestMapping("/row")
	public String rowPage(Map<String, Object> model) {
		model.put("message", this.message);
		return "row";
	}
	@RequestMapping("/rowgroup")
	public String rowGroupPage(Map<String, Object> model) {
		model.put("message", this.message);
		return "rowgroup";
	}
	@RequestMapping("/rowheader")
	public String rowHeaderPage(Map<String, Object> model) {
		model.put("message", this.message);
		return "rowheader";
	}
	@RequestMapping("/tooltip")
	public String toolTipPage(Map<String, Object> model) {
		model.put("message", this.message);
		return "tooltip";
	}
	@RequestMapping("/tree")
	public String treePage(Map<String, Object> model) {
		model.put("message", this.message);
		return "tree";
	}
	@RequestMapping("/treeitem")
	public String treeItemPage(Map<String, Object> model) {
		model.put("message", this.message);
		return "treeitem";
	}
	
	@RequestMapping("/command")
	public String commandPage(Map<String, Object> model) {
		model.put("message", this.message);
		return "command";
	}
	@RequestMapping("/composite")
	public String compositePage(Map<String, Object> model) {
		model.put("message", this.message);
		return "composite";
	}
	@RequestMapping("/input")
	public String inputPage(Map<String, Object> model) {
		model.put("message", this.message);
		return "input";
	}
	@RequestMapping("/landmark")
	public String landmarkPage(Map<String, Object> model) {
		model.put("message", this.message);
		return "landmark";
	}
	@RequestMapping("/range")
	public String rangePage(Map<String, Object> model) {
		model.put("message", this.message);
		return "range";
	}
	@RequestMapping("/roletype")
	public String roletypePage(Map<String, Object> model) {
		model.put("message", this.message);
		return "roletype";
	}
	@RequestMapping("/section")
	public String sectionPage(Map<String, Object> model) {
		model.put("message", this.message);
		return "section";
	}
	@RequestMapping("/sectionhead")
	public String sectionheadPage(Map<String, Object> model) {
		model.put("message", this.message);
		return "sectionhead";
	}
	@RequestMapping("/select")
	public String selectPage(Map<String, Object> model) {
		model.put("message", this.message);
		return "select";
	}
	@RequestMapping("/structure")
	public String structurePage(Map<String, Object> model) {
		model.put("message", this.message);
		return "structure";
	}
	@RequestMapping("/widget")
	public String widgetPage(Map<String, Object> model) {
		model.put("message", this.message);
		return "widget";
	}
	@RequestMapping("/window")
	public String windowPage(Map<String, Object> model) {
		model.put("message", this.message);
		return "window";
	}
	

}