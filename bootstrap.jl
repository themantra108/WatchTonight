(pwd() != @__DIR__) && cd(@__DIR__) # allow starting app from bin/ dir

using WatchTonight
const UserApp = WatchTonight
WatchTonight.main()
