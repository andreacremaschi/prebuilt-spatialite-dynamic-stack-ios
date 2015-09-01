Pod::Spec.new do |s|
  s.name	= "geos"
  s.version	= "3.4.2"
  s.summary	= "GEOS (Geometry Engine - Open Source) is a C++ port of the Java Topology Suite (JTS)."
  s.homepage	= "http://trac.osgeo.org/geos/"
  s.license	= { :type => "GNU LGPL 2.1",
		    :file => "COPYING" }
  s.author	= { "Yury Bychkov" => "me@yury.ca",
		    "Martin Davis" => "mbdavis@refractions.net" }

  s.ios.deployment_target = "4.0"
  s.osx.deployment_target = "10.6"

  s.source  = { :git => "https://github.com/andreacremaschi/prebuilt-spatialite-dynamic-stack-ios.git", :tag => '3.4.2' }

  s.preserve_paths = 'include/**/*.h'
    
  s.source_files = 'src/**/*.cpp', 'capi/*.cpp', 'geos_svn_revision.h', 'capi/geos_c.h', 'include/geos/export.h'
  s.exclude_files = '**/*tests*'
  
  s.public_header_files = 'capi/geos_c.h', 'include/geos/export.h'

  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/geos/include ${PODS_ROOT}/geos/capi', 'CLANG_CXX_LIBRARY' => 'libstdc++'}

end
