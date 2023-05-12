README.md

# Welcome to the Nations API

This is a simple API that provides information about different nations of the world.

# Installation
1. Clone the repository to your local machine.
2. Install Ruby and Rails if you haven't already.
3. Navigate to the project directory in your terminal and run 'bundle install' to install the required dependencies.
4. Run rails db:migrate to set up the database schema.
5. Start the server by running rails server.

## Usage

The API provides information about nations in the JSON format. By default, it returns the name of the nation, its currency symbol, and flag.

You can make a request to the following endpoint to get information about all nations:

`GET /api/v1/welcome/getdata`

The response will be a JSON array containing information about all the nations in the database. Here's an example:

```
[
  {"NAME":"EUR",
  "SYMBOL":"€",
  "FLAGS":"https://countryflagsapi.com/png/eu"
  }
  {
    "NAME":"USD",
    "SYMBOL":"$",
    "FLAGS":"https://countryflagsapi.com/png/usa"
  },
  ...
]
```

## Contributing

Contributions are welcome! Feel free to submit a pull request or open an issue if you encounter any problems or have suggestions for improvement.

## License

This project is licensed under the MIT License.