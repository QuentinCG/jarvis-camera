## Description
Take a picture or a video with <a target="_blank" href="http://domotiquefacile.fr/jarvis/">Jarvis assistant</a> using any USB webcam compatible with Linux.


<img src="https://raw.githubusercontent.com/QuentinCG/jarvis-camera/master/presentation.png">


## Usage
```
You: Prends une photo de test
Jarvis: Photo prise.
[Photo sauvegardée dans /tmp/photo_test.jpg comme définit dans le fichier command]

You: Prends une photo de test discretement
[Photo sauvegardée dans /tmp/photo_test.jpg comme définit dans le fichier command]

You: Prends une vidéo de test
Jarvis: Vidéo prise.
[Vidéo sauvegardée dans /tmp/video_test.mp4 comme définit dans le fichier command]

You: Prends une vidéo de test discrètement
[Vidéo sauvegardée dans /tmp/video_test.mp4 comme définit dans le fichier command]

You: Prends une vidéo et envoie la par mail
Jarvis: Mail envoyé.
[Vidéo envoyée par mail grace au plugin [Email Sender](https://github.com/QuentinCG/jarvis-email-sender)]

You: Prends une photo et envoie la par mail
Jarvis: Mail envoyé.
[Photo envoyée par mail grace au plugin [Email Sender](https://github.com/QuentinCG/jarvis-email-sender)]

You: Prends une photo et envoie la par facebook
[Photo envoyée par facebook grace au plugin [Facebook Messenger](https://github.com/QuentinCG/jarvis-fb-messenger)]
```


## How to install

1) Connect your camera to your computer where <a target="_blank" href="http://domotiquefacile.fr/jarvis/">Jarvis assistant</a> is installed

2) Get the camera name using ```ls /dev/video*``` and the audio output name and number of the camera using ```arecord -l```

3) Add this plugin to your <a target="_blank" href="http://domotiquefacile.fr/jarvis/">Jarvis assistant</a> (<a target="_blank" href="http://domotiquefacile.fr/jarvis/content/plugins">more info here</a>): ```./jarvis.sh -p https://github.com/QuentinCG/jarvis-camera```

4) Also add <a target="_blank" href="https://github.com/QuentinCG/jarvis-email-sender">Email Sender plugin</a> to <a target="_blank" href="http://domotiquefacile.fr/jarvis/">Jarvis assistant</a> if you want to send your picture or video by email.

5) Also add <a target="_blank" href="https://github.com/QuentinCG/jarvis-fb-messenger">Facebook messenger plugin</a> to <a target="_blank" href="http://domotiquefacile.fr/jarvis/">Jarvis assistant</a> if you want to send your picture by Facebook messenger.

6) Configure the <a target="_blank" href="https://github.com/QuentinCG/jarvis-camera/blob/master/config.sh">configuration file</a> to match your requirements.

7) Enjoy


## Author
[Quentin Comte-Gaz](http://quentin.comte-gaz.com/)


## License

This project is under MIT license. This means you can use it as you want (just don't delete the plugin header).


## Contribute

If you want to add more examples or improve the plugin, just create a pull request with proper commit message and right wrapping.
