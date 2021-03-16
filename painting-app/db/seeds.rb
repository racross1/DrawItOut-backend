Painting.delete_all 
User.delete_all
Topic.delete_all

u1 = User.create(username:"bob", password: "yay", tagline: "I am bob")

t1 = Topic.create(topic: "happy")
t2 = Topic.create(topic: "sad")
t3 = Topic.create(topic: "angry")
t4 = Topic.create(topic: "excited")
t5 = Topic.create(topic: "bored")
t6 = Topic.create(topic: "stressed")
t7 = Topic.create(topic: "procrastinate-y")
t8 = Topic.create(topic: "grateful")
t9 = Topic.create(topic: "curious")
t10 = Topic.create(topic: "silly")

# p1 = Painting.create( user_id: u1.id, topic_id: t1.id)

