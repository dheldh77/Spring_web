package Controller;

import Post.PostDao;
import Post.Post;
import Post.PostRegisterService;
import Post.RegistRequest;

import java.time.LocalDateTime;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.ui.Model;

@Controller
public class PostController {

    private PostDao postDao;

    private PostRegisterService postRegisterService;

    public void setPostRegisterService(PostRegisterService postRegisterService){
        this.postRegisterService = postRegisterService;
    }

    public void setPostDao(PostDao postDao){
        this.postDao = postDao;
    }

    @GetMapping("/post/regist")
    public String registGet(){
        return "post/regist";
    }

    @PostMapping("/post/regist")
    public String registPost(RegistRequest regReq){
        Long id = postRegisterService.regist(regReq);
        return "redirect:/post/" + String.valueOf(id);
    }

    @RequestMapping("/post/list")
    public String list(Model model){
        List<Post> posts = postDao.selectAll();
        model.addAttribute("posts", posts);

        return "post/list";
    }

    @GetMapping("/post/{id}")
    public String detail(@PathVariable("id") Long postId, Model model){
        Post post = postDao.selectById(postId);
        model.addAttribute("post", post);
        return "post/detail";
    }

    @GetMapping("/post/update/{id}")
    public String updateGet(@PathVariable("id") Long postId, Model model){
        Post post = postDao.selectById(postId);
        model.addAttribute("post", post);
        return "post/update";
    }

    @PostMapping("/post/update/{id}")
    public String updatePost(@PathVariable("id") Long postId, RegistRequest regReq){
        Post post = postDao.selectById(postId);
        post.setTitle(regReq.getTitle());
        post.setContent(regReq.getContent());
        post.setRegisterDateTime(LocalDateTime.now());

        postDao.update(post);
        return "redirect:/post/" + String.valueOf(post.getId());
    }

    @GetMapping("/post/delete/{id}")
    public String delete(@PathVariable("id") Long postId){
        Post post = postDao.selectById(postId);
        postDao.delete(post);

        return "redirect:/post/list";
    }
}
