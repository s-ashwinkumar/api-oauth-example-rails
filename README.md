## `Rails Genomelink-API Demo`

This is a sample rails application to show the use of genomelink-ruby gem. It implements the oauth and fetches some reports.

## Usage Instructions

### Step 1 - Setup/Register your app on genomelink.io

Visit "My apps" console and set
- Name: as you like
- Redirect uris: `http://127.0.0.1:3000/callback`

Set scopes (whitelists) in "Authorization scopes" panel.

- [x] report:eye-color
- [x] report:endurance-performance
- [x] report:caffeine-consumption

### Step 2 - Run the demo app

```bash
# Set the required ENV variables
# These details would be available in app dashboard on genomelink.io
$ export GENOMELINK_CLIENT_ID=<your_client_id>
$ export GENOMELINK_CLIENT_SECRET=<your_client_secret>
$ export GENOMELINK_CALLBACK_URL="http://127.0.0.1:3000/callback"
# In the code directory, run bundle install and start the server
$ bundle install
$ rails s
```

Visit `http://127.0.0.1:3000`

## How it works

See https://genomelink.io/developers/docs/tutorial-oauth-example/