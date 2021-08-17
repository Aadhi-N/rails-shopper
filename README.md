# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...



 <% @items.each do |item| %>
        <tr>
            <td><%= item.product.title %></td>
            <td><%= number_to_currency item.price %></td>
            <td><%= item.quantity %></td>
            <td>
                <%= form_for item, method: :delete do |f| %>
                    <%= f.submit "Remove" %>
                <% end %>
            </td>
        </tr>
        <% end %>