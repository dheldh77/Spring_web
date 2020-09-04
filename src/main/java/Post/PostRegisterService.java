package Post;

import java.time.LocalDateTime;

public class PostRegisterService {
    private PostDao postDao;

    public PostRegisterService(PostDao postDao){
        this.postDao = postDao;
    }

    public Long regist(RegistRequest req){
        Post post = new Post(req.getTitle(), req.getContent(), req.getUser(), LocalDateTime.now());
        postDao.insert(post);
        return post.getId();
    }
}
