use ogre.nu [ engineInstall ]

export def command [workspaceDir: string] {
  if (ls "($workspaceDir)/package-lock.json" > /dev/null) {
    npm ci
  } else {
    npm install
  }
}
