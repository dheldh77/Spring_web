package config;

import Post.PostDao;
import Post.PostRegisterService;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import org.apache.tomcat.jdbc.pool.DataSource;

@Configuration
public class PostConfig {

    @Bean
    public DataSource dataSource(){
        DataSource ds = new DataSource();
        ds.setDriverClassName("com.mysql.jdbc.Driver");
        ds.setUrl("jdbc:mysql://localhost/BLOG?characterEncoding=utf8&useSSL=false");
        ds.setUsername("root");
        ds.setPassword("1234");
        ds.setInitialSize(2);
        ds.setMaxActive(10);
        ds.setTestWhileIdle(true);
        ds.setMinEvictableIdleTimeMillis(60000 * 3);
        ds.setTimeBetweenEvictionRunsMillis(10 * 1000);
        return ds;
    }

    @Bean
    public PostDao postDao(){
        return new PostDao(dataSource());
    }

    @Bean
    public PostRegisterService postRegisterService(){
        return new PostRegisterService(postDao());
    }
}
