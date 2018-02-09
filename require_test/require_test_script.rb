# lib/以下をロードパスに追加
$:.unshift "#{File.dirname(__FILE__)}/lib"

# ライブラリをrequire
require "require_test"

# 処理実行
RequireTest::Client.new.do_something
