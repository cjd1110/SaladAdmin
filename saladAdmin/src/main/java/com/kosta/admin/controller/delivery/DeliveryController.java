package com.kosta.admin.controller.delivery;

import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kosta.admin.dao.delivery.DeliveryDAOImpl;
import com.kosta.admin.dto.delivery.InformationDto;
import com.kosta.admin.dto.delivery.PayOrderJoinDto;

@Controller
@RequestMapping("/delivery/")
public class DeliveryController {

	@Resource
	private DeliveryDAOImpl deliverydao;

	/* 주문확인 */
	@RequestMapping("confirm.do")
	public String confirm(Model model) {
		System.out.println("confirm 컨트롤러 들어옴");
		ArrayList<PayOrderJoinDto> orderlist = deliverydao.selectAllOrder();

		model.addAttribute("orderlist", orderlist);
		System.out.println("orderlist 수량 : " + orderlist.size());

		return "delivery.confirm";
	}

	/* 무통장 승인 처리 */
	@RequestMapping("multicheck.do")
	public String multiCheck(Model model, HttpServletRequest request) {
		System.out.println("multicheck.do 들어옴");
		List updateDepositor = new ArrayList();

		for (String item : request.getParameter("o_step").split(",")) {
			updateDepositor.add(item);
		}
		deliverydao.updateOrder(updateDepositor); // 무통장 입금 확인을 완료하면 주문상태를 발송지시로
													// 바꿔준다.

		return "redirect:confirm.do";
	}

	/* 발송요청 */
	@RequestMapping("request.do")
	public String request(Model model, HttpServletRequest request) {
		System.out.println("request 컨트롤러 들어옴");
		System.out.println(request.getAttribute("result"));
		ArrayList<InformationDto> directlist = new ArrayList();
		deliverydao.deleteInfo(); // 발송지시 데이터 전체 삭제 (최신 값 갱신을 위하여 삭제를 먼저 해줌)
		System.out.println("delete 구문 실행 ");

		directlist = deliverydao.selectAllInfo(); // 배송 지시에 들어갈 목록들 가져오기
		System.out.println("select 구문 실행 ");

		for (int i = 0; i < directlist.size(); i++) {
			System.out.println("for문 들어옴");
			System.out.println((i + 1) + "번째 id 값 : " + directlist.get(i).getI_id());
		}
		model.addAttribute("directlist", directlist);

		System.out.println("directlist 사이즈 : " + directlist.size());

		for (int i = 0; i < directlist.size(); i++) {
			System.out.println(i + "번 실행");
			deliverydao.insertInfo(directlist.get(i)); // 배송테이블로 데이터 삽입 // 무통장처리
														// 완료
		}

		System.out.println("request 컨트롤러 들어옴");

		System.out.println("direct");
		return "delivery.request";
	}

	@RequestMapping("excelConvert.do")
	public String excelConvert(Locale locale, Model model, HttpServletRequest request) {
		ArrayList<InformationDto> orderlistxml = deliverydao.selectAllInfo(); // 쿼리
		String excelTitle = "구매자아이디,주문번호,구매자이름,구매자주소,구매자연락처,상품코드,상품이름,수량,받는이이름,받는이주소,받는이연락처,박스수량,박스번호,박스분류,배송업체,송장번호";
		String downFileNm = "주문목록";
		HSSFWorkbook wb = new HSSFWorkbook();
		// 시트 생성
		HSSFSheet sheet = wb.createSheet(downFileNm);
		String titleArr[] = excelTitle.split(",");
		// 첫번째 행에 각각의 컬럼 제목작성
		HSSFCell cell = null;
		HSSFRow row = sheet.createRow(0);
		for (int titleNo = 0; titleNo < titleArr.length; titleNo++) {
			cell = row.createCell(titleNo);
			cell.setCellValue(titleArr[titleNo]);
		}
		int i = 1;
		// DB에서 조회한 목록데이터를 담은 LIST객체를 OBJECT타입으로 돌린다 //VO종류가 무엇이든 상관없음?
		for (Object obj : orderlistxml) {
			row = sheet.createRow((short) i);
			int j = 0;
			for (Field field : obj.getClass().getDeclaredFields()) {
				field.setAccessible(true);
				Object value = null;
				try {
					value = field.get(obj);
				} catch (IllegalArgumentException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IllegalAccessException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				if (value == null) {
					cell = row.createCell(j);
					cell.setCellValue("");
				} else {
					cell = row.createCell(j);
					cell.setCellValue(String.valueOf(value));
				}
				j++;
			}
			i++;
		}
		FileOutputStream fileOut = null;
		try {
			System.out.println("여기 들어옴");
			//날짜 추후 추가예정
			fileOut = new FileOutputStream("C:\\[샐러드콕]주문목록.xls");
			wb.write(fileOut);
			fileOut.close();
		} catch (IOException e) {
			throw new RuntimeException("런타임에러가 발생하였습니다.");
		}

		/*model.addAttribute("olist", orderlistxml);
		return "delivery.exceldown";*/
		request.setAttribute("result", "result");;
		return "redirect:request.do";
	}

	/* 배송지시 */
	@RequestMapping("direct.do")
	public String direct(Model model) {
		System.out.println("direct 컨트롤러 들어옴");
		return "delivery.direct";
	}

	/* 배송중 */
	@RequestMapping("shipping")
	public String shipping(Model model) {
		System.out.println("shipping 컨트롤러 들어옴");
		return "delivery.shipping";
	}

	/* 배송완료 */
	@RequestMapping("completed.do")
	public String completed(Model model) {
		System.out.println("completed 컨트롤러 들어옴");
		return "delivery.completed";
	}

}