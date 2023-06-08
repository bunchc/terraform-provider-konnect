package client

import "strings"

const (
	RoutePath    = RuntimeGroupPathGet + "/core-entities/routes"
	RoutePathGet = RoutePath + "/%s"
)

type Route struct {
	RuntimeGroupId          string              `json:"-"`
	Id                      string              `json:"id"`
	Name                    string              `json:"name"`
	Protocols               []string            `json:"protocols"`
	Methods                 []string            `json:"methods"`
	Hosts                   []string            `json:"hosts"`
	Paths                   []string            `json:"paths"`
	Headers                 map[string][]string `json:"headers"`
	HTTPSRedirectStatusCode int                 `json:"https_redirect_status_code"`
	RegexPriority           int                 `json:"regex_priority"`
	StripPath               bool                `json:"strip_path"`
	PathHandling            string              `json:"path_handling"`
	PreserveHost            bool                `json:"preserve_host"`
	RequestBuffering        bool                `json:"request_buffering"`
	ResponseBuffering       bool                `json:"response_buffering"`
	Service                 *ServiceId          `json:"service,omitempty"`
}
type ServiceId struct {
	Id string `json:"id"`
}
type RouteCollection struct {
	Routes []Route `json:"data"`
}

func (s *Route) RouteEncodeId() string {
	return s.RuntimeGroupId + IdSeparator + s.Id
}

func RouteDecodeId(s string) (string, string) {
	tokens := strings.Split(s, IdSeparator)
	return tokens[0], tokens[1]
}
