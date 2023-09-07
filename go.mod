module mabert

go 1.21.0

replace github.com/intel/amber/v1/client/tdx => ./trustauthority-client/go-tdx

replace github.com/intel/amber/v1/client => ./trustauthority-client/go-client

require (
	github.com/intel/amber-client/go-client v0.0.0-20230818122158-ec906c8f8946
	github.com/intel/amber/v1/client/tdx v0.0.0-00010101000000-000000000000
)

require (
	github.com/decred/dcrd/dcrec/secp256k1/v4 v4.2.0 // indirect
	github.com/goccy/go-json v0.10.2 // indirect
	github.com/golang-jwt/jwt/v4 v4.5.0 // indirect
	github.com/google/uuid v1.3.0 // indirect
	github.com/intel/amber/v1/client v0.0.0 // indirect
	github.com/lestrrat-go/blackmagic v1.0.1 // indirect
	github.com/lestrrat-go/httpcc v1.0.1 // indirect
	github.com/lestrrat-go/httprc v1.0.4 // indirect
	github.com/lestrrat-go/iter v1.0.2 // indirect
	github.com/lestrrat-go/jwx/v2 v2.0.11 // indirect
	github.com/lestrrat-go/option v1.0.1 // indirect
	github.com/pkg/errors v0.9.1 // indirect
	github.com/segmentio/asm v1.2.0 // indirect
	github.com/sirupsen/logrus v1.9.3 // indirect
	golang.org/x/crypto v0.10.0 // indirect
	golang.org/x/sys v0.9.0 // indirect
)
