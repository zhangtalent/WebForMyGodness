package z.talent.tengyu.ui.admin;
import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
/**
 * @author zhangtalent
 * 主页控制器
 * 前端控制器
 * 
 */
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.annotation.SessionScope;
import org.springframework.web.multipart.MultipartFile;

import com.qcloud.cos.COSClient;
import com.qcloud.cos.ClientConfig;
import com.qcloud.cos.auth.BasicCOSCredentials;
import com.qcloud.cos.auth.COSCredentials;
import com.qcloud.cos.exception.CosClientException;
import com.qcloud.cos.exception.CosServiceException;
import com.qcloud.cos.model.PutObjectRequest;
import com.qcloud.cos.model.PutObjectResult;
import com.qcloud.cos.model.StorageClass;
import com.qcloud.cos.region.Region;

import z.talent.tengyu.server.PhotoUploadServe;
import z.talent.tengyu.server.inf.PhotoUploadServeImpl;

@Controller
@SessionScope
@RequestMapping("/admin")
public class AdminPhotoManage {
	
	
	@Resource(name="PhotoUploadServeImpl")
	PhotoUploadServe photoUploadServe;
	//后台主页
	@ResponseBody
	@PostMapping("/upload_photo")
    public String AdminPage(@RequestParam(value="file",required=false) MultipartFile file,
			HttpServletRequest request) throws IllegalStateException, IOException {
		//System.err.println("正在被访问");
		String filenameString = photoUploadServe.transportFile(file);
		String resultString = photoUploadServe.uploadToserve(filenameString);
		
        return resultString;
    }
	
	//后台的照片管理主页
		@GetMapping("/photo")
	    public String AdminPhotoPage(Model model) {
			//System.err.println("正在被访问");
	        model.addAttribute("number", photoUploadServe.getNumber());
	        return "admin_photo";
	    }
		//后台的照片管理主页
			@GetMapping("/photo/add")
		    public String AdminPhotoAdd(Model model) {
				//System.err.println("正在被访问");
		        model.addAttribute("message", "Hello World!");
		        return "admin_photo_add";
		    }
	
}
