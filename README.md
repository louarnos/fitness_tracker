# What is Fitness Food Tracker?

Fitness Food tracker is an app that allows users to create, store, and recall meals with access to a database of over 8000 foods. The nutritional information in the foods table was distributed by the USDA. Foods have attributes of a description, grams per serving, calories per serving, carbs, monosaturated fats, polysaturated fats, saturated fats, sugars, protein, sodium, cholesterol, and fiber.

# Technologies Used

Front End: [Repo](https://github.com/louarnos/FitnessTrackerFrontEnd)
 - Javascript
 - HTML
 - CSS
 - Jquery
 - Handlebars.js
 
Back End: 
 - Ruby
 - Rails
 - Postgres
 - SQL

# Database Structure

There are four tables:
  - Users
  - Meals 
    - Foreign Key of User
  - Meal_items -- Joined table 
    - Foreign Keys of Meal and Food
  - Foods
    
Users have many meals. Meals have many foods through meal_items. 

## API end-points

| Verb   | URI Pattern            | Controller#Action    |
| ----   | -----------            | -----------------    |
| POST   | `/sign-up`             | `users#signup`       |
| POST   | `/sign-in`             | `users#signin`       |
| DELETE | `/sign-out/:id`        | `users#signout`      |
| PATCH  | `/change-password/:id` | `users#changepw`     |
| GET    | `/foods`               | `foods#index`        |
| POST   | `/foods`               | `foods#create`       |
| GET    | `/foods/:id`           | `foods#show`         |
| PATCH  | `/foods/:id`           | `foods#update`       |
| DELETE | `/foods/:id`           | `foods#destroy`      |
| GET    | `/meals`               | `meals#index`        |
| POST   | `/meals`               | `meals#create`       |
| GET    | `/meals/:id`           | `meals#show`         |
| PATCH  | `/meals/:id`           | `meals#update`       |
| DELETE | `/meals/:id`           | `meals#destroy`      | 
| GET    | `/meals_items`         | `meals_items#index`  |
| POST   | `/meals_items`         | `meals_items#create` |
| GET    | `/meals_items/:id`     | `meals_items#show`   |
| PATCH  | `/meals_items/:id`     | `meals_items#update` |
| DELETE | `/meals_items/:id`     | `meals_items#destroy`|

All data returned from API actions is formatted as JSON.
    
# Wire Frames

[link] (https://app.moqups.com/louarnos/7K1jE6OVH6/view)

## User actions

*Summary:*

<table>
<tr>
  <th colspan="3">Request</th>
  <th colspan="2">Response</th>
</tr>
<tr>
  <th>Verb</th>
  <th>URI</th>
  <th>body</th>
  <th>Status</th>
  <th>body</th>
</tr>
<tr>
<td>POST</td>
<td>`/sign-up`</td>
<td><strong>credentials</strong></td>
<td>201, Created</td>
<td><strong>user</strong></td>
</tr>
<tr>
  <td colspan="3"></td>
  <td>400 Bad Request</td>
  <td><em>empty</em></td>
</tr>
<tr>
<td>POST</td>
<td>`/sign-in`</td>
<td><strong>credentials</strong></td>
<td>200 OK</td>
<td><strong>user w/token</strong></td>
</tr>
<tr>
  <td colspan="3"></td>
  <td>401 Unauthorized</td>
  <td><em>empty</em></td>
</tr>
<tr>
<td>DELETE</td>
<td>`/sign-out/:id`</td>
<td>empty</td>
<td>201 Created</td>
<td>empty</td>
</tr>
<tr>
  <td colspan="3"></td>
  <td>401 Unauthorized</td>
  <td><em>empty</em></td>
</tr>
<tr>
<td>PATCH</td>
<td>`/change-password/:id`</td>
<td><strong>passwords</strong></td>
<td>204 No Content</td>
<td><strong>user w/token</strong></td>
</tr>
<tr>
  <td colspan="3"></td>
  <td>400 Bad Request</td>
  <td><em>empty</em></td>
</tr>
</table>
## User actions

# User Stories

- As a user I want to be able to search the database and see all entries containing keywords like “chicken"
- As a user I want to be able to see my last 5 meals
- As a user I want to be able to see my meals from a given date
- As a user I want to have an ideal macronutrient breakdown and see if my meal meets the ideal

# Things to improve

In order of priority:

- Make the foods table searchable by keyword
- Create an calorie goal calculator based on users age, weight, gender, etc. with designated macronutrients breakdown
- Total calories and macros for a given day.
- Make meals searchable by date
- Graph macronutrients of a given meal or day, and compare against goal designated by calculator.
- Make meals searchable by name
- Improve styling and flow of page
