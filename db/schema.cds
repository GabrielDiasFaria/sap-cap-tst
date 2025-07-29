namespace my.blog;

entity Posts {
    key ID        : UUID;
        title     : String(100);
        content   : LargeString;
        image     : String(300);
        createdAt : Timestamp = $now;
}
