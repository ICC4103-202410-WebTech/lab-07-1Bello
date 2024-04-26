[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-24ddc0f5d75046c5622901739e7c5dd533143b0c8e959d652212380cedb1ea36.svg)](https://classroom.github.com/a/0PWCtUDg)
# Lab 07

In this lab, your task is to establish relationships between the tables within the database. You'll need to establish two one-to-many relationships: one between the `users` table and the `posts` table, and another between the `posts` table and itself. Additionally, you'll create a many-to-many relationship between the `posts` and `tags` tables. Furthermore, you are required to implement all necessary validations and callbacks for the models

## Instructions

1. Create a one-to-many relationship between the `users` and `posts` tables. A user can have many posts, but a post can only have one user. You will have to create a foreign key in the `posts` table that references the `id` column in the `users` table.

2. Create a many-to-many relationship between the `posts` and `tags` tables. A post can have many tags, and a tag can have many posts. You will have to create a join table called `post_tags` that will have two foreign keys: one that references the `id` column in the `posts` table and another that references the `id` column in the `tags` table.

3. Create a one-to-many relationship between the `posts` and `posts` tables. A post can have many posts, but a posts can only have one post. You will have to create a foreign key in the `posts` table that references the `id` column in the `posts` table.

4. Create all validations and callbacks for the models. The `users` table should have the following validations:
   - The `name` column should be present.
   - The `email` column should be present and uniqu and have a valid email format.
   - The `password` column should be present and have a minimum length of 6 characters.

5. The `posts` table should have the following validations:
    - The `title` column should be present.
    - The `content` column should be present.
    - The `user_id` column should be present.
    - The `answers_count` column should have equal or greater than 0.
    - The `likes_count` column should have equal or greater than 0.
    - The `published_at` column should have default value of the current date and time if it is not provided.
  
6. The `tags` table should have the following validations:
    - The `name` column should be present and unique.

7. Create all migrations and models for the tables needed to complete the instruccions.

8. All validations should be created in the models and have a creative error message.

## Seed Population

Create a seeds.rb file in the db directory and populate the database with 5 users, 10 posts and 5 tags.

Requirements:

- Each user should have one post minimum.
- Each post should have at least one tag.
- Each tag should be associated with at least one post.

Make sure to create the relationships between the tables, so the database is populated correctly.

## Queries

1. Find all the posts that belong to a user with the name "John Doe".

```ruby
User.find_by(name: "John Doe")
```

2. Find all the tags that belong to a post with the title "Post 1".

```ruby
Post.find_by(title: "Post 1")
```

3. Find all users that have a post with the tag "Tag 1".

```ruby
User.joins(posts: :tags).where(tags: { name: "Tag 1" }).distinct
```
