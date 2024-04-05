package com.mycompany.htmlcssjs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/css")
public class CssController {
		@RequestMapping("")
		public String index() {
			log.info("index() 실행");
			return "css/index";
		}
		
		@RequestMapping("/exam01_where_css")
		public String exam01_where_css() {
			log.info("exam01_where_css() 실행");
			return "css/exam01_where_css";
		}
		@RequestMapping("/exam02_selectors")
		public String exam02Selectors() {
			log.info("exam02Selectors() 실행");
			return "css/exam02_selectors";
		}
		
		@RequestMapping("/exam03_margin_padding")
		public String exam03MarginPadding() {
			log.info("exam03MarginPadding() 실행");
			return "css/exam03_margin_padding";
		}
		@RequestMapping("/exam04_border")
		public String exam04Border() {
			log.info("exam04Border() 실행");
			return "css/exam04_border";
		}
		
		@RequestMapping("/exam05_link")
		public String exam05Link() {
			log.info("exam05Link() 실행");
			return "css/exam05_link";
		}
		
		@RequestMapping("/exam06_list")
		public String exam06List() {
			log.info("exam06List() 실행");
			return "css/exam06_list";
		}
		
		@RequestMapping("/exam07_table")
		public String exam07Table() {
			log.info("exam07Table() 실행");
			return "css/exam07_table";
		}
		
		@RequestMapping("/exam08_display")
		public String exam08Display() {
			log.info("exam08Display() 실행");
			return "css/exam08_display";
		}
		
		@RequestMapping("/exam09_float")
		public String exam09Float() {
			log.info("exam09Float() 실행");
			return "css/exam09_float";
		}
		
		@RequestMapping("/exam10_float_layout")
		public String exam10FloatLayout() {
			log.info("exam10FloatLayout() 실행");
			return "css/exam10_float_layout";
		}
		
		@RequestMapping("/exam11_flex")
		public String exam11Flex() {
			log.info("exam11Flex() 실행");
			return "css/exam11_flex";
		}
		
		@RequestMapping("/exam12_flex_layout")
		public String exam12FlexLayout() {
			log.info("exam12FlexLayout() 실행");
			return "css/exam12_flex_layout";
		}
		
		
		
}
