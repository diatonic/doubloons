mkdir Doubloons/Contents/Frameworks
cp -R /Users/User/QtSDK/Desktop/Qt/4.8.1/gcc/lib/QtCore.framework Doubloons/Contents/Frameworks
cp -R /Users/User/QtSDK/Desktop/Qt/4.8.1/gcc/lib/QtGui.framework Doubloons/Contents/Frameworks
cp -R /opt/local/lib/libminiupnpc.8.dylib Doubloons/Contents/Frameworks
cp -R /opt/local/lib/libssl.1.0.0.dylib Doubloons/Contents/Frameworks
cp -R /opt/local/lib/libz.1.dylib Doubloons/Contents/Frameworks
cp -R /opt/local/lib/libz.1.2.7.dylib Doubloons/Contents/Frameworks
cp -R /opt/local/lib/libcrypto.1.0.0.dylib Doubloons/Contents/Frameworks
cp -R /opt/local/lib/db48/libdb_cxx-4.8.dylib Doubloons/Contents/Frameworks
cp -R /opt/local/lib/libboost_system-mt.dylib Doubloons/Contents/Frameworks
cp -R /opt/local/lib/libboost_filesystem-mt.dylib Doubloons/Contents/Frameworks
cp -R /opt/local/lib/libboost_program_options-mt.dylib Doubloons/Contents/Frameworks
cp -R /opt/local/lib/libboost_thread-mt.dylib Doubloons/Contents/Frameworks
install_name_tool -id @executable_path/../Frameworks/QtCore.framework/Versions/4/QtCore Doubloons/Contents/Frameworks/QtCore.framework/Versions/4/QtCore
install_name_tool -id @executable_path/../Frameworks/QtGui.framework/Versions/4/QtGui Doubloons/Contents/Frameworks/QtGui.framework/Versions/4/QtGui
install_name_tool -id @executable_path/../Frameworks/libminiupnpc.8.dylib Doubloons/Contents/Frameworks/libminiupnpc.8.dylib
install_name_tool -id @executable_path/../Frameworks/libssl.1.0.0.dylib Doubloons/Contents/Frameworks/libssl.1.0.0.dylib
install_name_tool -id @executable_path/../Frameworks/libz.1.dylib Doubloons/Contents/Frameworks/libz.1.dylib
install_name_tool -id @executable_path/../Frameworks/libcrypto.1.0.0.dylib Doubloons/Contents/Frameworks/libcrypto.1.0.0.dylib
install_name_tool -id @executable_path/../Frameworks/libdb_cxx-4.8.dylib Doubloons/Contents/Frameworks/libdb_cxx-4.8.dylib
install_name_tool -id @executable_path/../Frameworks/libboost_system-mt.dylib Doubloons/Contents/Frameworks/libboost_system-mt.dylib
install_name_tool -id @executable_path/../Frameworks/libboost_filesystem-mt.dylib Doubloons/Contents/Frameworks/libboost_filesystem-mt.dylib
install_name_tool -id @executable_path/../Frameworks/libboost_program_options-mt.dylib Doubloons/Contents/Frameworks/libboost_program_options-mt.dylib
install_name_tool -id @executable_path/../Frameworks/libboost_thread-mt.dylib Doubloons/Contents/Frameworks/libboost_thread-mt.dylib
install_name_tool -change /Users/User/QtSDK/Desktop/Qt/4.8.1/gcc/lib/QtCore.framework/Versions/4/QtCore @executable_path/../Frameworks/QtCore.framework/Versions/4/QtCore Doubloons/Contents/MacOs/Feathercoin-Qt
install_name_tool -change /Users/User/QtSDK/Desktop/Qt/4.8.1/gcc/lib/QtGui.framework/Versions/4/QtGui @executable_path/../Frameworks/QtGui.framework/Versions/4/QtGui Doubloons/Contents/MacOs/Feathercoin-Qt
install_name_tool -change /Users/User/QtSDK/Desktop/Qt/4.8.1/gcc/lib/QtCore.framework/Versions/4/QtCore @executable_path/../Frameworks/QtCore.framework/Versions/4/QtCore Doubloons/Contents/Frameworks/QtGui.framework/Versions/4/QtGui
install_name_tool -change /opt/local/lib/libminiupnpc.8.dylib @executable_path/../Frameworks/libminiupnpc.8.dylib Doubloons/Contents/MacOs/Feathercoin-Qt
install_name_tool -change /opt/local/lib/libssl.1.0.0.dylib @executable_path/../Frameworks/libssl.1.0.0.dylib Doubloons/Contents/MacOs/Feathercoin-Qt
install_name_tool -change /opt/local/lib/libz.1.dylib @executable_path/../Frameworks/libz.1.dylib Doubloons/Contents/Frameworks/libcrypto.1.0.0.dylib
install_name_tool -change /opt/local/lib/libz.1.dylib @executable_path/../Frameworks/libz.1.dylib Doubloons/Contents/Frameworks/libssl.1.0.0.dylib
install_name_tool -change /opt/local/lib/libcrypto.1.0.0.dylib @executable_path/../Frameworks/libcrypto.1.0.0.dylib Doubloons/Contents/MacOs/Feathercoin-Qt
install_name_tool -change /opt/local/lib/libcrypto.1.0.0.dylib @executable_path/../Frameworks/libcrypto.1.0.0.dylib Doubloons/Contents/Frameworks/libssl.1.0.0.dylib
install_name_tool -change /opt/local/lib/db48/libdb_cxx-4.8.dylib @executable_path/../Frameworks/libdb_cxx-4.8.dylib Doubloons/Contents/MacOs/Feathercoin-Qt
install_name_tool -change /opt/local/lib/libboost_system-mt.dylib @executable_path/../Frameworks/libboost_system-mt.dylib Doubloons/Contents/MacOs/Feathercoin-Qt
install_name_tool -change /opt/local/lib/libboost_system-mt.dylib @executable_path/../Frameworks/libboost_system-mt.dylib Doubloons/Contents/Frameworks/libboost_filesystem-mt.dylib
install_name_tool -change /opt/local/lib/libboost_system-mt.dylib @executable_path/../Frameworks/libboost_system-mt.dylib Doubloons/Contents/Frameworks/libboost_thread-mt.dylib
install_name_tool -change /opt/local/lib/libboost_filesystem-mt.dylib @executable_path/../Frameworks/libboost_filesystem-mt.dylib Doubloons/Contents/MacOs/Feathercoin-Qt
install_name_tool -change /opt/local/lib/libboost_program_options-mt.dylib @executable_path/../Frameworks/libboost_program_options-mt.dylib Doubloons/Contents/MacOs/Feathercoin-Qt
install_name_tool -change /opt/local/lib/libboost_thread-mt.dylib @executable_path/../Frameworks/libboost_thread-mt.dylib Doubloons/Contents/MacOs/Feathercoin-Qt