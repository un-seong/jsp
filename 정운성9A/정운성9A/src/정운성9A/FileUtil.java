package 정운성9A;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.multipart.FileRenamePolicy;


public class FileUtil {

	private static String saveDirectory;
	private static int maxPostSize = 1024 * 1024 * 20;
	private static String encoding = "UTF-8";
	private static FileRenamePolicy namePolicy = new DefaultFileRenamePolicy();
	
	public static KfcDTO getDTO(HttpServletRequest request) throws Exception{
		KfcDTO dto = null;
		
		saveDirectory = request.getServletContext().getRealPath("image");
		
		File dir = new File(saveDirectory);
		if(dir.exists() == false) {
			dir.mkdirs();			
		}
		
		MultipartRequest mpRequest = new MultipartRequest(request, saveDirectory, maxPostSize, encoding, namePolicy);
		
		dto = new KfcDTO();
		dto.setName(mpRequest.getParameter("name"));
		dto.setPrice(Integer.parseInt(mpRequest.getParameter("price")));
		dto.setCategory(mpRequest.getParameter("category"));
		dto.setMemo(mpRequest.getParameter("memo"));
		dto.setImg(mpRequest.getOriginalFileName("img"));
		dto.setWtd(mpRequest.getParameter("wtd"));
		dto.setUpload(mpRequest.getFile("img"));
		
		return dto;
		
		
		
	}
	
	
	
}
