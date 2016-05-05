[Front End Repo](https://github.com/louarnos/FitnessTrackerFrontEnd)

# Technologies Used For Back End
 
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

Meal_items assoicated with a user's meal is deleted when an associated meal is deleted.


## User actions

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


# Meal Actions

<table>
<tr>
<td>GET</td>
<td>`/meals`</td>
<td><strong></strong></td>
<td>200 OK</td>
<td><strong>user w/token</strong></td>
</tr>
<tr>
  <td colspan="3"></td>
  <td>400 Bad Request</td>
  <td><em>empty</em></td>
</tr>
<tr>
<td>GET</td>
<td>`/meals/:id`</td>
<td><strong></strong></td>
<td>200 OK</td>
<td><strong>user w/token</strong></td>
</tr>
<tr>
  <td colspan="3"></td>
  <td>400 Bad Request</td>
  <td><em>empty</em></td>
</tr>
<tr>
<td>POST</td>
<td>`/meals`</td>
<td><strong>Meal Name</strong></td>
<td>201 Created</td>
<td><strong>user w/token</strong></td>
</tr>
<tr>
  <td colspan="3"></td>
  <td>400 Bad Request</td>
  <td><em>empty</em></td>
</tr>
<tr>
<td>DELETE</td>
<td>`/meals/:id`</td>
<td><strong></strong></td>
<td>204 No Content</td>
<td><strong>user w/token</strong></td>
</tr>
<tr>
  <td colspan="3"></td>
  <td>400 Bad Request</td>
  <td><em>empty</em></td>
</tr>
<tr>
<td>PATCH</td>
<td>`/meals/:id`</td>
<td><strong>New Meal Name</strong></td>
<td>204 No Content</td>
<td><strong>user w/token</strong></td>
</tr>
<tr>
  <td colspan="3"></td>
  <td>400 Bad Request</td>
  <td><em>empty</em></td>
</tr>
</table>

# Meal_items Actions

<table>
<tr>
<td>POST</td>
<td>`/meals_items`</td>
<td><strong>food ID</strong></td>
<td>201 Created</td>
<td><strong>user w/token</strong></td>
</tr>
<tr>
  <td colspan="3"></td>
  <td>400 Bad Request</td>
  <td><em>empty</em></td>
</tr>
</table>


#Foods Actions

<table>
<tr>
<td>GET</td>
<td>`/foods`</td>
<td><strong></strong></td>
<td>200 OK</td>
<td><strong>user</strong></td>
</tr>
<tr>
  <td colspan="3"></td>
  <td>400 Bad Request</td>
  <td><em>empty</em></td>
</tr>
<tr>
<td>GET</td>
<td>`/foods/:id`</td>
<td><strong></strong></td>
<td>200 OK</td>
<td><strong>user</strong></td>
</tr>
<tr>
  <td colspan="3"></td>
  <td>400 Bad Request</td>
  <td><em>empty</em></td>
</tr>
<tr>
<td>POST</td>
<td>`/foods`</td>
<td><strong>All Attributes for Food</strong></td>
<td>201 Created</td>
<td><strong>user</strong></td>
</tr>
<tr>
  <td colspan="3"></td>
  <td>400 Bad Request</td>
  <td><em>empty</em></td>
</tr>
</table>

