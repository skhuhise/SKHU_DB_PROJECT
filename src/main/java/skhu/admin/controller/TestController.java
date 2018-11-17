package skhu.admin.controller;

import java.io.File;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import skhu.dto.Admin;
import skhu.dto.Subject;
import skhu.mapper.AdminMapper;
import skhu.mapper.SubjectMapper;
import skhu.util.ExcelReader;
import skhu.util.ExcelReaderOption;

@SessionAttributes("authInfo")
@Controller
public class TestController {
	@Autowired AdminMapper adminMapper;
	@Autowired SubjectMapper subjectMapper;

	@RequestMapping(value="test2", method = RequestMethod.GET)
	public String test2() {
		return "test2";
	}
	@RequestMapping(value="myTest1", method = RequestMethod.POST)
	public String excelUploadAjax(MultipartHttpServletRequest request, Model model)  throws Exception{
		MultipartFile excelFile = request.getFile("excelFile");

		File destFile = new File(request.getSession().getServletContext().getRealPath("") + "\\res\\file\\admin\\테스트.xlsx");

		excelFile.transferTo(destFile);

		ExcelReaderOption excelReaderOption = new ExcelReaderOption();
		excelReaderOption.setFilePath(destFile.getAbsolutePath());
		excelReaderOption.setOutputColumns("A","B");
		excelReaderOption.setStartRow(2);
		excelReaderOption.setSheetRow(0);


		List<Map<String, String>>excelContent =ExcelReader.read(excelReaderOption);

		for(Map<String, String> map : excelContent){
			Admin admin = new Admin();
			admin.setLoginId(map.get("A"));

			if(adminMapper.findTest(admin.getLoginId()) == null) {
				admin.setName(map.get("B"));
				admin.setDepartmentId(1);
				admin.setEmail("test@test.com");
				admin.setAuthority(4);
				admin.setPassword("1234");
				adminMapper.insert(admin);
			}


		}

		model.addAttribute("excel", excelContent);

		destFile.delete();
		return "redirect:test2";
	}

	@RequestMapping(value="myTest2", method = RequestMethod.POST)
	public String excelUploadTest2(MultipartHttpServletRequest request, Model model)  throws Exception{
		MultipartFile excelFile =request.getFile("excelFile");

		File destFile = new File(request.getSession().getServletContext().getRealPath("") + "\\res\\file\\admin\\테스트.xlsx");

		excelFile.transferTo(destFile);

		ExcelReaderOption excelReaderOption = new ExcelReaderOption();
		excelReaderOption.setFilePath(destFile.getAbsolutePath());
		excelReaderOption.setOutputColumns("A","B", "C", "D", "E", "F", "G", "H", "I");
		excelReaderOption.setStartRow(2);
		excelReaderOption.setSheetRow(0);


		List<Map<String, String>>excelContent = ExcelReader.read(excelReaderOption);

		for(Map<String, String> map : excelContent){
			Subject subject = new Subject();

			subject.setCode(map.get("C"));
			subject.setYear(map.get("A"));

			if(subjectMapper.findTest(subject.getCode(), subject.getYear()) == null) {
				subject.setAbolish(false);
				subject.setDepartmentId(7);
				subject.setDetailId(1);
				subject.setDivision(map.get("G"));
				subject.setEstablish(map.get("H"));
				subject.setName(map.get("E"));
				Admin admin = adminMapper.findTest(map.get("I"));
				if(admin != null)
					subject.setProfessorId(admin.getId());

				else
					subject.setProfessorId(1);

				subject.setScore(Double.parseDouble(map.get("F")));
				subject.setSemester((int)Double.parseDouble(map.get("B")));
				subject.setSubjectClass(map.get("D"));

				subjectMapper.insert(subject);
			}


		}

		model.addAttribute("excel", excelContent);

		destFile.delete();
		return "redirect:test2";
	}
}
