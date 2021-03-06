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
POST: "/messages/1/comments" comment_id: 26
[ActiveJob] [...]: gid://actioncable-examples/Comment/26
[ActiveJob] [CommentRelayJob] [...] Rendered comments/_comment.html.erb (0.7ms)
[ActiveJob] [CommentRelayJob] [...] [ActionCable] Broadcasting to messages:1:comments: {:comment=>"<article data-user-id=\"8\">\n  <h3>Comment by Ice Cube</h3>\n  <p>deneme</p>\n</article>"}

```
