package config;

import Controller.PostController;
import Post.PostDao;
import Post.PostRegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class ControllerConfig {

    @Autowired
    public PostDao postDao;

    @Autowired
    public PostRegisterService postRegisterService;

    @Bean
    public PostController postListController(){
        PostController controller = new PostController();
        controller.setPostDao(postDao);
        controller.setPostRegisterService(postRegisterService);
        return controller;
    }
}
