package Post;

import java.time.LocalDateTime;

public class Post {

    private Long id;
    private String title;
    private String content;
    private String user;
    private LocalDateTime registerDateTime;

    public Post(String title, String content, String user, LocalDateTime regDateTime){
        this.title = title;
        this.content = content;
        this.user = user;
        this.registerDateTime =regDateTime;
    }

    void setId(Long id){
        this.id = id;
    }

    public Long getId(){
        return id;
    }

    public void setTitle(String title){
        this.title = title;
    }

    public String getTitle(){
        return title;
    }

    public void setContent(String content){
        this.content = content;
    }

    public String getContent(){
        return content;
    }

    public String getUser(){
        return user;
    }

    public void setRegisterDateTime(LocalDateTime registerDateTime){
        this.registerDateTime = registerDateTime;
    }

    public LocalDateTime getRegisterDateTime(){
        return registerDateTime;
    }
}
