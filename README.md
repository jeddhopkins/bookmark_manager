# Bookmark Manager

This code is intended as a supplementary guide for [bookmark manager](https://github.com/makersacademy/course/tree/master/bookmark_manager). The commits on master branch roughly correspond with the walkthroughs provided in the challenge.

## User Stories

```
As a time-pressed user
So that I can quickly go to web sites I regularly visit
I would like to see a list of bookmarks
```

```
As a time-pressed user
So that I can see the bookmarks I'm interested in
I would like to be able to add bookmarks
```

```
As a user
So I can delete a bookmark in Bookmark Manager
I want to be able to delete a specific bookmark
```

```
As a user
So I can change a bookmark in Bookmark Manager
I want to update a bookmark
```

## Domain Model

![Bookmark Manager domain model](./images/domain_model.png)


## How to use

### To set up the project

Clone this repository and then run:

```
bundle
```

### To set up the database

Connect to `psql` and create the `bookmark_manager` and `bookmark_manager_test` database:

```
CREATE DATABASE bookmark_manager;
CREATE DATABASE bookmark_manager_test;
```

To set up the appropriate tables, connect to each database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.
