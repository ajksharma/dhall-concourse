let Concourse =
	  ../lib/dhall-concourse/types.dhall

let Defaults =
	  ../lib/dhall-concourse/defaults.dhall

let Prelude =
	  ../lib/prelude/package.dhall

in      Defaults.Resource
	  ⫽ { name =
			"bbr-cli"
		, type =
			Concourse.ResourceType.InBuilt "github-release"
		, source =
			Some
			[ Prelude.JSON.keyText "owner" "cloudfoundry-incubator"
			, Prelude.JSON.keyText "repository" "cfcr-etcd-release"
			, Prelude.JSON.keyText
			  "access_token"
			  "((github-kubo-gitbot-access-token))"
			]
		}
	: Concourse.Resource