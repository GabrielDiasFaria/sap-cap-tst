using my.blog from '../db/schema';

service BlogService {
    entity Posts as projection on blog.Posts;
}
