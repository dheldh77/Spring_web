package Post;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;

import javax.sql.DataSource;
import java.sql.*;

import java.time.LocalDateTime;
import java.util.List;

public class PostDao {
    private JdbcTemplate jdbcTemplate;

    public PostDao(DataSource dataSource){
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    private RowMapper<Post> postRowMapper = new RowMapper<Post>() {
        @Override
        public Post mapRow(ResultSet rs, int i) throws SQLException {
            Post post = new Post(rs.getString("TITLE"), rs.getString("CONTENT"), rs.getString("USER"), rs.getTimestamp("REGDATE").toLocalDateTime());
            post.setId(rs.getLong("ID"));
            return post;
        }
    };

    // CREATE
    public void insert(Post post) {
        KeyHolder keyHolder = new GeneratedKeyHolder();
        jdbcTemplate.update(new PreparedStatementCreator() {
            @Override
            public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
                PreparedStatement pstmt = con.prepareStatement("insert into POST (TITLE, CONTENT, USER, REGDATE) " + "values (?, ?, ?, ?)", new String[] {"ID"});
                pstmt.setString(1, post.getTitle());
                pstmt.setString(2, post.getContent());
                pstmt.setString(3, post.getUser());
                pstmt.setTimestamp(4, Timestamp.valueOf(post.getRegisterDateTime()));
                return pstmt;
            }
        }, keyHolder);

        Number keyValue = keyHolder.getKey();
        post.setId(keyValue.longValue());
    }

    // READ
    public Post selectById(Long postId){
        List<Post> results = jdbcTemplate.query("select * from POST where ID = ?", postRowMapper, postId);
        return results.isEmpty() ? null : results.get(0);
    }

    public List<Post> selectAll(){
        List<Post> results = jdbcTemplate.query("select * from POST", postRowMapper);
        return results;
    }

    // UPDATE
    public void update(Post post){
        jdbcTemplate.update("update POST set TITLE = ?, CONTENT = ?, REGDATE = ? where ID = ?", post.getTitle(), post.getContent(), LocalDateTime.now(), post.getId());
    }

    // DELETE
    public void delete(Post post){
        jdbcTemplate.update("delete FROM POST where ID = ? ", post.getId());
    }

}
