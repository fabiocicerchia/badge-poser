local regex = ""
regex = regex .. "/("
regex = regex .. "|circleci"
regex = regex .. "|circleci/.+"
regex = regex .. "|circleci/.+\.svg"
regex = regex .. "|circleci\.svg"
regex = regex .. "|composerlock"
regex = regex .. "|composerlock\.svg"
regex = regex .. "|d/daily"
regex = regex .. "|d/daily\.png"
regex = regex .. "|d/daily\.svg"
regex = regex .. "|d/monthly"
regex = regex .. "|d/monthly\.png"
regex = regex .. "|d/monthly\.svg"
regex = regex .. "|d/total"
regex = regex .. "|d/total\.png"
regex = regex .. "|d/total\.svg"
regex = regex .. "|dependents"
regex = regex .. "|dependents\.svg"
regex = regex .. "|downloads"
regex = regex .. "|downloads\.png"
regex = regex .. "|downloads\.svg"
regex = regex .. "|gitattributes"
regex = regex .. "|gitattributes\.svg"
regex = regex .. "|license"
regex = regex .. "|license\.png"
regex = regex .. "|license\.svg"
regex = regex .. "|suggesters"
regex = regex .. "|suggesters\.svg"
regex = regex .. "|v/stable"
regex = regex .. "|v/stable\.png"
regex = regex .. "|v/stable\.svg"
regex = regex .. "|v/unstable"
regex = regex .. "|v/unstable\.png"
regex = regex .. "|v/unstable\.svg"
regex = regex .. "|version"
regex = regex .. "|version\.png"
regex = regex .. "|version\.svg"
regex = regex .. ")$"
local m = ngx.re.match(ngx.var.request_uri, regex)
if not m then return end

local res = ngx.location.capture("/stats")
