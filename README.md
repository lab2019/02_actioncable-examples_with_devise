# Action Cable Examples

A collection of examples showcasing the capabilities of Action Cable.

## Dependencies

You must have redis installed and running on the default port:6379 (or configure it in config/redis/cable.yml).

### Installing Redis
##### On Linux
* `wget http://download.redis.io/redis-stable.tar.gz`
* `tar xvzf redis-stable.tar.gz`
* `cd redis-stable`
* `make`
* `make install`

##### On Mac
* `brew install redis`

###### Note: You must have Ruby 2.2.2 installed in order to use redis

## Starting the servers

1. Run `./bin/setup`
2. Run `./bin/cable`
3. Open up a separate terminal and run: `./bin/rails server`
4. One more terminal to run redis server: `redis-server`
4. Visit `http://localhost:3000`

## Live comments example

1. Open two browsers with separate cookie spaces (like a regular session and an incognito session). 
2. Login as different people in each browser. 
3. Go to the same message.
4. Add comments in either browser and see them appear real-time on the counterpart screen.

# Debug

```rub
Started POST "/messages/1/comments" for 127.0.0.1 at 2016-12-05 14:56:16 +0300
Processing by CommentsController#create as JS
  Parameters: {"utf8"=>"✓", "comment"=>{"content"=>"deneme"}, "commit"=>"Post comment", "message_id"=>"1"}
  User Load (0.5ms)  SELECT  "users".* FROM "users" WHERE "users"."id" = ? ORDER BY "users"."id" ASC LIMIT 1  [["id", 8]]
  Message Load (0.1ms)  SELECT  "messages".* FROM "messages" WHERE "messages"."id" = ? LIMIT 1  [["id", 1]]
   (0.1ms)  begin transaction
  SQL (0.2ms)  INSERT INTO "comments" ("content", "message_id", "user_id", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["content", "deneme"], ["message_id", 1], ["user_id", 8], ["created_at", 2016-12-05 11:56:16 UTC], ["updated_at", 2016-12-05 11:56:16 UTC]]
   (3.3ms)  commit transaction
[ActiveJob] Enqueued CommentRelayJob (Job ID: 6d792c26-1190-419f-847d-6ca0f7f927ff) to Inline(default) with arguments: gid://actioncable-examples/Comment/26
[ActiveJob]   Comment Load (0.1ms)  SELECT  "comments".* FROM "comments" WHERE "comments"."id" = ? LIMIT 1  [["id", 26]]
[ActiveJob] [CommentRelayJob] [6d792c26-1190-419f-847d-6ca0f7f927ff] Performing CommentRelayJob from Inline(default) with arguments: gid://actioncable-examples/Comment/26
[ActiveJob] [CommentRelayJob] [6d792c26-1190-419f-847d-6ca0f7f927ff]   User Load (0.1ms)  SELECT  "users".* FROM "users" WHERE "users"."id" = ? LIMIT 1  [["id", 8]]
[ActiveJob] [CommentRelayJob] [6d792c26-1190-419f-847d-6ca0f7f927ff]   Rendered comments/_comment.html.erb (0.7ms)
[ActiveJob] [CommentRelayJob] [6d792c26-1190-419f-847d-6ca0f7f927ff] [ActionCable] Broadcasting to messages:1:comments: {:comment=>"<article data-user-id=\"8\">\n  <h3>Comment by Ice Cube</h3>\n  <p>deneme</p>\n</article>"}
[ActiveJob] [CommentRelayJob] [6d792c26-1190-419f-847d-6ca0f7f927ff] Performed CommentRelayJob from Inline(default) in 4.45ms
  Rendered comments/_comment.html.erb (0.2ms)
  Rendered comments/_new.html.erb (0.4ms)
  Rendered comments/create.js.erb (6.2ms)
Completed 200 OK in 30ms (Views: 9.6ms | ActiveRecord: 4.4ms)
```
