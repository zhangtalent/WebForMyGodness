package z.talent.tengyu.ui.fore;
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
import org.springframework.web.bind.annotation.RequestMapping;

import z.talent.tengyu.mapper.JournalMapper;
import z.talent.tengyu.mapper.PhotoMapper;

@Controller
@RequestMapping("/")
public class Main {
	
	@Autowired
	private PhotoMapper photoMapper;
	@Autowired
	private JournalMapper journalMapper;
	@GetMapping("/")
    public String ProfileMain(Model model) {
		//System.err.println("111正在被访问");
		model.addAttribute("number", photoMapper.getNumber());
		model.addAttribute("data", journalMapper.getJournals(0, 10).get(0));
		return "index";
    }
	
	@GetMapping("/journals")
    public String JournalsMain(Model model) {
		//System.err.println("111正在被访问");
		model.addAttribute("datas", journalMapper.getJournals(0, 10));
        return "fore_journal";
    }
}
