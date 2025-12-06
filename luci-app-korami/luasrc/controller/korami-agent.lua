module("luci.controller.korami-agent", package.seeall)

function index()
	if not nixio.fs.access("/etc/config/korami-agent") then
		return
	end
	entry({"admin", "services", "korami-agent"}, cbi("korami-agent"), _("Nezha Agent"), 300).dependent = true
	entry({"admin","services","korami-agent","status"},call("act_status")).leaf=true
end

function act_status()
	local e={}
	e.running=luci.sys.call("pgrep korami-agent >/dev/null")==0
	e.enabled=luci.sys.exec("uci get korami-agent.config.enabled")
	e.tls=luci.sys.exec("uci get korami-agent.config.tls")
	
	luci.sys.call("/etc/init.d/korami-agent enable")
	-- e.port=luci.sys.exec("uci get korami-agent.config.port")
	luci.http.prepare_content("application/json")
	luci.http.write_json(e)
end
