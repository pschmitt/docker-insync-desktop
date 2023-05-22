# insync-desktop

Docker version of the [Insync desktop client](https://www.insynchq.com/).

## Usage

Example `docker-compose.yaml`:

```yaml
version: '3.8'

services:
  insync:
    image: pschmitt/insync-desktop
    container_name: insync
    sysctls:
      - fs.inotify.max_user_watches=1048576
    volumes:
      - ./config:/config
      - ./data:/data
    restart: unless-stopped
    ports:
      - 5800:5800
      # - 5900:5900
```

Then you can navigate to `http://localhost:5800` to login.

## Important notes

⚠️ insync may be hiding in the tray, just click on the app icon in the tray. 

The tray sthould be in the top left corner of the screen.
