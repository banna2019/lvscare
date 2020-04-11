module github.com/fanux/lvscare

go 1.13

require (
	github.com/fsnotify/fsnotify v1.4.8-0.20190312181446-1485a34d5d57 // indirect
	github.com/hashicorp/hcl v1.0.1-0.20180906183839-65a6292f0157 // indirect
	github.com/konsorten/go-windows-terminal-sequences v1.0.2 // indirect
	github.com/magiconair/properties v1.8.1-0.20190110142458-7757cc9fdb85 // indirect
	github.com/mitchellh/go-homedir v1.1.0
	github.com/pelletier/go-toml v1.3.0 // indirect
	github.com/sirupsen/logrus v1.4.2-0.20190403091019-9b3cdde74fbe
	github.com/spf13/afero v1.2.2 // indirect
	github.com/spf13/cobra v0.0.4
	github.com/spf13/jwalterweatherman v1.1.0 // indirect
	github.com/spf13/pflag v1.0.4-0.20181223182923-24fa6976df40 // indirect
	github.com/spf13/viper v1.3.2
	github.com/vishvananda/netlink v0.0.0-00010101000000-000000000000
	github.com/vishvananda/netns v0.0.0-00010101000000-000000000000
)

replace (
	github.com/vishvananda/netlink => ./pkg/vishvananda/netlink
	github.com/vishvananda/netns => ./pkg/vishvananda/netns
)
