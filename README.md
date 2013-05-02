Rails Girls China
=====================

This application is using for rails girls events, primary for china.

#Feature

- Event list and detail, including map, date, description, etc.
- Blog to write some important thing or summary event.
- Tutors and girls attend before the event begin.
- Pairing with tutors and girls on the event.
- Import girls' sign up from Sina Weibo exported CSV.

#Development

Rename ```config/database.yml.sample``` to ```config/database.yml```.

Run ```bundle && rake db:migrate && rake db:seed``` first.

Run ```rails s``` to start server.

Open browser ```localhost:3000/login``` to login with email ```admin@admin.com``` and password ```aaaaaa```.

Now you can do anything you want, **hoping you can pull-request your contributes to made us better**.

#License

MIT license, RailsGirlsChina.
