# Skillz Gym
Made as the portfolio project for the Rails section of the Flatiron School online program. Skillz Gym is a workout app, that allows users to create an account to keep track of their daily workouts. When a user registers as a Coach, they have the ability to create new daily workouts by selecting up to 3 workout components ("skills") from 7 different target categories from the database, and then prescribing whatever amount of work to each skill that they may like. Coach's may create new workouts, edit workouts, delete workouts, and view all Athlete workout records. A user that is not a coach is refered to as an Athlete. Athletes have the ability to see the daily workout that has been set by a coach, to see all archived workouts, to mark a workout as completed by themselves, and the view their own workout records.

## Installing
Fork and clone from https://github.com/kirstenwerner/skillz_app
install gems by running: bundle install

Run: rake db:seed

Open local browser by running: rails s

Navigate to https://localhost:3000

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Bug reports and pull requests are welcome on GitHub at https://github.com/kirstenwerner/skillz_app. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Authors

kirstenwerner


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
