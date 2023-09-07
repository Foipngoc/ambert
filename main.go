package main

import (
                "fmt"
                "crypto/tls"
                amberclient "github.com/intel/amber-client/go-client"
                "github.com/intel/amber/v1/client/tdx"
                "log"
        )

func main(){
        cfg:= amberclient.Config{
                BaseUrl: "https://api.projectamberla.intel.com/",
                ApiUrl: "https://api.projectamberla.intel.com",
                TlsCfg: &tls.Config{},
                ApiKey: "MnbKbiZy5T8Okyvc28SCDAm2dCouoF28LTJsTMR4",
        }
        client, err := amberclient.New(&cfg)
        nonce, err := client.GetNonce()
        if err != nil {
                fmt.Printf("Something bad happened: %s\n\n", err)
                return
        }
        fmt.Printf("nonce:", string(nonce.Val))
        evLogParser := tdx.NewEventLogParser()
        tdHeldData:=make([]byte, 10, 10)
        adapter, err := tdx.NewEvidenceAdapter(tdHeldData, evLogParser)
        if err != nil {
                log.Println(err)
                return
        }
	tdxnonce:=make([]byte, 10, 10)
        evidence, err := adapter.CollectEvidence(tdxnonce)
        if err != nil {
                log.Println(err)
                return
        }
        log.Println(evidence)
}
