package care

import (
	"fmt"
	"time"

	"github.com/fanux/lvscare/service"
	"github.com/fanux/lvscare/create"
)

//VsAndRsCare is
func VsAndRsCare(vs string, rs []string, beat int64, path string, schem string) error {
	var lvs service.Lvser
	var err error
	t := time.NewTicker(time.Duration(beat) * time.Second)
	for {
		select {
		case <-t.C:
			if lvs == nil {
				lvs, err = service.BuildLvscare(vs, rs)
				if err != nil {
					fmt.Println("waint for ipvs kernel module load...")
				}
			}
			//check virturl server
			service, _ := lvs.GetVirtualServer()
			if service == nil {
				create.VsAndRsCreate(vs, rs)
			}

			//check real server
			lvs.CheckRealServers(path, schem)
		}
	}

	return nil
}
