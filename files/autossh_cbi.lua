--[[
 Copyright (C) 2015 Jian Chang <aa65535@live.com>

 This is free software, licensed under the GNU General Public License v3.
 See /LICENSE for more information.
]]--

m = Map("autossh", translate("AutoSSH"),
	translate("设置路由器的 SSH 反向隧道"))

s = m:section(TypedSection, "autossh", translate("AutoSSH 设置"))
s.anonymous   = true
s.addremove   = true

o = s:option(Flag, "enabled", translate("Enable"))
o.default     = o.enabled
o.rmempty     = false

o = s:option(Value, "localhost", translate("本地主机"))
o.placeholder = "localhost"
o.datatype    = "ipaddr"
o.rmempty     = true

o = s:option(Value, "localport", translate("本地端口"))
o.placeholder = 22
o.datatype    = "port"
o.rmempty     = false

o = s:option(Value, "remotehost", translate("远程主机"))
o.placeholder = "0.0.0.0"
o.datatype    = "ipaddr"
o.rmempty     = true

o = s:option(Value, "remoteport", translate("远程端口"))
o.placeholder = 22222
o.datatype    = "port"
o.rmempty     = false

o = s:option(Value, "monitorport", translate("监视端口"))
o.datatype    = "port"
o.rmempty     = false

o = s:option(Value, "sshhost", translate("ssh主机"))
o.datatype    = "hostname"
o.rmempty     = false

o = s:option(Value, "sshuser", translate("ssh用户"))
o.placeholder = 'root'
o.datatype    = "string"
o.rmempty     = true

o = s:option(Value, "sshport", translate("ssh端口"))
o.placeholder = 22
o.datatype    = "port"
o.rmempty     = true

o = s:option(Value, "sshidentify", translate("ssh密钥"))
o.placeholder = "/etc/autossh/id_rsa"
o.datatype    = "file"
o.rmempty     = true

o = s:option(Value, "poll", translate("轮询时间"))
o.placeholder = 600
o.datatype    = "uinteger"
o.rmempty     = true

return m
