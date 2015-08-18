#!/bin/bash
dpkg-deb -bZgzip projects/FBIcon debs
dpkg-deb -bZgzip projects/SimpleMCChat debs
# dpkg-deb -bZgzip projects/<packagename> <output folder (debs)>
