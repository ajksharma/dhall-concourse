{ platform :
	Text
, run :
	./TaskRunConfig.dhall
, image_resource :
	Optional ./ImageResource.dhall
, rootfs_uri :
	Optional Text
, inputs :
	Optional (List ./TaskInput.dhall)
, outputs :
	Optional (List ./TaskOutput.dhall)
, caches :
	Optional (List ./TaskCache.dhall)
, params :
	Optional (List ./TextTextPair.dhall)
}