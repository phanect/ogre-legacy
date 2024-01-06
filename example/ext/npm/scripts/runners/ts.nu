use ogre.nu [ engineInstall ]

export def run [filePath: string] {
  if (! type npm > /dev/null) {
    engineInstall
  }
  # Check if esno is installed
  if (! ($npm) list esno &> /dev/null) {
    ($npm) install -D esno # TODO
  }

  npm exec esno ($filePath)
}
