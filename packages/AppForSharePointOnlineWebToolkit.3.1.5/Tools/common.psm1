# SharePoint references that need to be copy local
$CopyLocalReferences = @(
    @("Microsoft.IdentityModel"),
    @("Microsoft.IdentityModel.Extensions")
)

# Imports needed for VB project
$VbImports = @(
    "Microsoft.SharePoint.Client"
)

Export-ModuleMember -Variable @( 'CopyLocalReferences', 'VbImports' )

# SIG # Begin signature block
# MIIiNgYJKoZIhvcNAQcCoIIiJzCCIiMCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCBFXa+SmaZzi29I
# ZbQBupehOsXBaymJJhDiJL4ANRZACKCCC4QwggUMMIID9KADAgECAhMzAAABT+fG
# YslG9Kl/AAAAAAFPMA0GCSqGSIb3DQEBCwUAMH4xCzAJBgNVBAYTAlVTMRMwEQYD
# VQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01pY3Jvc29mdCBDb2RlIFNpZ25p
# bmcgUENBIDIwMTAwHhcNMTYxMTE3MjE1OTE0WhcNMTgwMjE3MjE1OTE0WjCBgzEL
# MAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1v
# bmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjENMAsGA1UECxMETU9Q
# UjEeMBwGA1UEAxMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMIIBIjANBgkqhkiG9w0B
# AQEFAAOCAQ8AMIIBCgKCAQEAtImQinYMrMU9obyB6NdQCLtaaaeux8y4W704DyFR
# Rggj0b0imXO3KO/3B6sr+Uj3pRQFqU0kG21hlpyDnTPALHmZ8F3z7NVE36XNWfp2
# rQY/xkoD5uotlBDCZm/9YtBQitEikSOXZTShxJoCXpLiuHwoeMJe40b3yu84V4is
# VgZYypgbx6jXXjaumkUw47a3PRjCpyeweU1T2DLmdqNQKvY/urtBHiSGTZibep72
# LOK8kGBl+5Zp+uATaOKJKi51GJ3Cbbgh9JleKn8xoKcNzO9PEW7+SUJOYd43yyue
# QO/Oq15wCHOlcnu3Rs5bMlNdijlRb7DXqHjdoyhvXu5CHwIDAQABo4IBezCCAXcw
# HwYDVR0lBBgwFgYKKwYBBAGCNz0GAQYIKwYBBQUHAwMwHQYDVR0OBBYEFJIOoRFx
# ti9VDcMP9MlcdC5aDGq/MFIGA1UdEQRLMEmkRzBFMQ0wCwYDVQQLEwRNT1BSMTQw
# MgYDVQQFEysyMzA4NjUrYjRiMTI4NzgtZTI5My00M2U5LWIyMWUtN2QzMDcxOWQ0
# NTJmMB8GA1UdIwQYMBaAFOb8X3u7IgBY5HJOtfQhdCMy5u+sMFYGA1UdHwRPME0w
# S6BJoEeGRWh0dHA6Ly9jcmwubWljcm9zb2Z0LmNvbS9wa2kvY3JsL3Byb2R1Y3Rz
# L01pY0NvZFNpZ1BDQV8yMDEwLTA3LTA2LmNybDBaBggrBgEFBQcBAQROMEwwSgYI
# KwYBBQUHMAKGPmh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9wa2kvY2VydHMvTWlj
# Q29kU2lnUENBXzIwMTAtMDctMDYuY3J0MAwGA1UdEwEB/wQCMAAwDQYJKoZIhvcN
# AQELBQADggEBABHAuWpDNf6FsTiADbh0dSyNcUm4PEHtLb3iBjaQdiuJ5baB6Ybj
# GIyWkzJCp6f2tzQlOdDGekPq23dwzNTpQuuoxVUCdXie2BC+BxvKlGP7PA9x7tRV
# Z9cp9mq/B7zlj4Lq+KHiczM/FJJeobplVzdFhYBc1izGizxqh6MHEcvs2XE4IDUk
# PVS9zFWJ9HcQm+WZqg+uxjyOn9oAT8994bPAIPdSMfciSNVhjX8mAhl9g8xhkyrd
# uNziCLOn3+EEd2DI9Kw1yzHlbHVRxTd7E2pOlWuPQJ7ITT6uvVnFINbCeK23ZFs7
# 0MAVcDQU5cWephzH9P/2y0jB4o3zbs6qtKAwggZwMIIEWKADAgECAgphDFJMAAAA
# AAADMA0GCSqGSIb3DQEBCwUAMIGIMQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2Fz
# aGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENv
# cnBvcmF0aW9uMTIwMAYDVQQDEylNaWNyb3NvZnQgUm9vdCBDZXJ0aWZpY2F0ZSBB
# dXRob3JpdHkgMjAxMDAeFw0xMDA3MDYyMDQwMTdaFw0yNTA3MDYyMDUwMTdaMH4x
# CzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRt
# b25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01p
# Y3Jvc29mdCBDb2RlIFNpZ25pbmcgUENBIDIwMTAwggEiMA0GCSqGSIb3DQEBAQUA
# A4IBDwAwggEKAoIBAQDpDmRQeWe1xOP9CQBMnpSs91Zo6kTYz8VYT6mldnxtRbrT
# OZK0pB75+WWC5BfSj/1EnAjoZZPOLFWEv30I4y4rqEErGLeiS25JTGsVB97R0sKJ
# HnGUzbV/S7SvCNjMiNZrF5Q6k84mP+zm/jSYV9UdXUn2siou1YW7WT/4kLQrg3TK
# K7M7RuPwRknBF2ZUyRy9HcRVYldy+Ge5JSA03l2mpZVeqyiAzdWynuUDtWPTshTI
# wciKJgpZfwfs/w7tgBI1TBKmvlJb9aba4IsLSHfWhUfVELnG6Krui2otBVxgxrQq
# W5wjHF9F4xoUHm83yxkzgGqJTaNqZmN4k9Uwz5UfAgMBAAGjggHjMIIB3zAQBgkr
# BgEEAYI3FQEEAwIBADAdBgNVHQ4EFgQU5vxfe7siAFjkck619CF0IzLm76wwGQYJ
# KwYBBAGCNxQCBAweCgBTAHUAYgBDAEEwCwYDVR0PBAQDAgGGMA8GA1UdEwEB/wQF
# MAMBAf8wHwYDVR0jBBgwFoAU1fZWy4/oolxiaNE9lJBb186aGMQwVgYDVR0fBE8w
# TTBLoEmgR4ZFaHR0cDovL2NybC5taWNyb3NvZnQuY29tL3BraS9jcmwvcHJvZHVj
# dHMvTWljUm9vQ2VyQXV0XzIwMTAtMDYtMjMuY3JsMFoGCCsGAQUFBwEBBE4wTDBK
# BggrBgEFBQcwAoY+aHR0cDovL3d3dy5taWNyb3NvZnQuY29tL3BraS9jZXJ0cy9N
# aWNSb29DZXJBdXRfMjAxMC0wNi0yMy5jcnQwgZ0GA1UdIASBlTCBkjCBjwYJKwYB
# BAGCNy4DMIGBMD0GCCsGAQUFBwIBFjFodHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20v
# UEtJL2RvY3MvQ1BTL2RlZmF1bHQuaHRtMEAGCCsGAQUFBwICMDQeMiAdAEwAZQBn
# AGEAbABfAFAAbwBsAGkAYwB5AF8AUwB0AGEAdABlAG0AZQBuAHQALiAdMA0GCSqG
# SIb3DQEBCwUAA4ICAQAadO9XTyl7xBaFeLhQ0yL8CZ2sgpf4NP8qLJeVEuXkv8+/
# k8jjNKnbgbjcHgC+0jVvr+V/eZV35QLU8evYzU4eG2GiwlojGvCMqGJRRWcI4z88
# HpP4MIUXyDlAptcOsyEp5aWhaYwik8x0mOehR0PyU6zADzBpf/7SJSBtb2HT3wfV
# 2XIALGmGdj1R26Y5SMk3YW0H3VMZy6fWYcK/4oOrD+Brm5XWfShRsIlKUaSabMi3
# H0oaDmmp19zBftFJcKq2rbtyR2MX+qbWoqaG7KgQRJtjtrJpiQbHRoZ6GD/oxR0h
# 1Xv5AiMtxUHLvx1MyBbvsZx//CJLSYpuFeOmf3Zb0VN5kYWd1dLbPXM18zyuVLJS
# R2rAqhOV0o4R2plnXjKM+zeF0dx1hZyHxlpXhcK/3Q2PjJst67TuzyfTtV5p+qQW
# BAGnJGdzz01Ptt4FVpd69+lSTfR3BU+FxtgL8Y7tQgnRDXbjI1Z4IiY2vsqxjG6q
# HeSF2kczYo+kyZEzX3EeQK+YZcki6EIhJYocLWDZN4lBiSoWD9dhPJRoYFLv1keZ
# oIBA7hWBdz6c4FMYGlAdOJWbHmYzEyc5F3iHNs5Ow1+y9T1HU7bg5dsLYT0q15Is
# zjdaPkBCMaQfEAjCVpy/JF1RAp1qedIX09rBlI4HeyVxRKsGaubUxt8jmpZ1xTGC
# FggwghYEAgEBMIGVMH4xCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9u
# MRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRp
# b24xKDAmBgNVBAMTH01pY3Jvc29mdCBDb2RlIFNpZ25pbmcgUENBIDIwMTACEzMA
# AAFP58ZiyUb0qX8AAAAAAU8wDQYJYIZIAWUDBAIBBQCggfkwGQYJKoZIhvcNAQkD
# MQwGCisGAQQBgjcCAQQwHAYKKwYBBAGCNwIBCzEOMAwGCisGAQQBgjcCARUwLwYJ
# KoZIhvcNAQkEMSIEIMk5blcm7HUb/YwXJ2Z0SVTfl6vOx9voi9adEm3HTfUqMIGM
# BgorBgEEAYI3AgEMMX4wfKBigGAAYwBvAG0AbQBvAG4AXwBiADUANwA2AGYAYgAx
# ADgALQA2AGMAMwA0AC0ANABmADAAMQAtADkAYgA1ADAALQBlADUANwAwADYAYgAy
# ADkAOQBkAGIAZAAuAHAAcwBtADGhFoAUaHR0cDovL21pY3Jvc29mdC5jb20wDQYJ
# KoZIhvcNAQEBBQAEggEAeyoy6W0GW9RFE93MXV7I4g80t0zaOpGBCNKNZ7ZINP7W
# x63/qwKdH8KNu+ZwLNbPn1L9eI8714JZr25269U42ND4foszHQ+3B8bF2BbJ9AS6
# v66ZD+EJ2uPvl2fxU2wyaVphIWTedq1Z9eKUh9CiOhI6ETeeFSgg/RjKqr11m5e+
# qZVKQv0jdGpvhhz98RUR2NUQ/4iiPmOcx+QfLd0VlGP+q+c/wJSlLkskuQtjEYbk
# YawXBbFeC2AolwcTZsNyRl8U9BsEfGkG/f8s+Mr6cG5R1h7JHlGM79eIQ+sLFfH8
# xZjeTBEqEVLtCX8mPvddt9kQyY9IVg3Gr6IjEiySfaGCE0cwghNDBgorBgEEAYI3
# AwMBMYITMzCCEy8GCSqGSIb3DQEHAqCCEyAwghMcAgEDMQ8wDQYJYIZIAWUDBAIB
# BQAwggE6BgsqhkiG9w0BCRABBKCCASkEggElMIIBIQIBAQYKKwYBBAGEWQoDATAx
# MA0GCWCGSAFlAwQCAQUABCDtxBGYr0j+F35iGs3mfsy2yJuhXfZq7UNqc3ElRfXV
# aQIGWVRC569fGBMyMDE3MDcxMzAwMTA0MS4xMjRaMASAAgH0oIG5pIG2MIGzMQsw
# CQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9u
# ZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMQ0wCwYDVQQLEwRNT1BS
# MScwJQYDVQQLEx5uQ2lwaGVyIERTRSBFU046MTQ4Qy1DNEI5LTIwNjYxJTAjBgNV
# BAMTHE1pY3Jvc29mdCBUaW1lLVN0YW1wIFNlcnZpY2Wggg7NMIIGcTCCBFmgAwIB
# AgIKYQmBKgAAAAAAAjANBgkqhkiG9w0BAQsFADCBiDELMAkGA1UEBhMCVVMxEzAR
# BgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1p
# Y3Jvc29mdCBDb3Jwb3JhdGlvbjEyMDAGA1UEAxMpTWljcm9zb2Z0IFJvb3QgQ2Vy
# dGlmaWNhdGUgQXV0aG9yaXR5IDIwMTAwHhcNMTAwNzAxMjEzNjU1WhcNMjUwNzAx
# MjE0NjU1WjB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4G
# A1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSYw
# JAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMDCCASIwDQYJKoZI
# hvcNAQEBBQADggEPADCCAQoCggEBAKkdDbx3EYo6IOz8E5f1+n9plGt0VBDVpQoA
# goX77XxoSyxfxcPlYcJ2tz5mK1vwFVMnBDEfQRsalR3OCROOfGEwWbEwRA/xYIiE
# VEMM1024OAizQt2TrNZzMFcmgqNFDdDq9UeBzb8kYDJYYEbyWEeGMoQedGFnkV+B
# VLHPk0ySwcSmXdFhE24oxhr5hoC732H8RsEnHSRnEnIaIYqvS2SJUGKxXf13Hz3w
# V3WsvYpCTUBR0Q+cBj5nf/VmwAOWRH7v0Ev9buWayrGo8noqCjHw2k4GkbaICDXo
# eByw6ZnNPOcvRLqn9NxkvaQBwSAJk3jN/LzAyURdXhacAQVPIk0CAwEAAaOCAeYw
# ggHiMBAGCSsGAQQBgjcVAQQDAgEAMB0GA1UdDgQWBBTVYzpcijGQ80N7fEYbxTNo
# WoVtVTAZBgkrBgEEAYI3FAIEDB4KAFMAdQBiAEMAQTALBgNVHQ8EBAMCAYYwDwYD
# VR0TAQH/BAUwAwEB/zAfBgNVHSMEGDAWgBTV9lbLj+iiXGJo0T2UkFvXzpoYxDBW
# BgNVHR8ETzBNMEugSaBHhkVodHRwOi8vY3JsLm1pY3Jvc29mdC5jb20vcGtpL2Ny
# bC9wcm9kdWN0cy9NaWNSb29DZXJBdXRfMjAxMC0wNi0yMy5jcmwwWgYIKwYBBQUH
# AQEETjBMMEoGCCsGAQUFBzAChj5odHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20vcGtp
# L2NlcnRzL01pY1Jvb0NlckF1dF8yMDEwLTA2LTIzLmNydDCBoAYDVR0gAQH/BIGV
# MIGSMIGPBgkrBgEEAYI3LgMwgYEwPQYIKwYBBQUHAgEWMWh0dHA6Ly93d3cubWlj
# cm9zb2Z0LmNvbS9QS0kvZG9jcy9DUFMvZGVmYXVsdC5odG0wQAYIKwYBBQUHAgIw
# NB4yIB0ATABlAGcAYQBsAF8AUABvAGwAaQBjAHkAXwBTAHQAYQB0AGUAbQBlAG4A
# dAAuIB0wDQYJKoZIhvcNAQELBQADggIBAAfmiFEN4sbgmD+BcQM9naOhIW+z66bM
# 9TG+zwXiqf76V20ZMLPCxWbJat/15/B4vceoniXj+bzta1RXCCtRgkQS+7lTjMz0
# YBKKdsxAQEGb3FwX/1z5Xhc1mCRWS3TvQhDIr79/xn/yN31aPxzymXlKkVIArzgP
# F/UveYFl2am1a+THzvbKegBvSzBEJCI8z+0DpZaPWSm8tv0E4XCfMkon/VWvL/62
# 5Y4zu2JfmttXQOnxzplmkIz/amJ/3cVKC5Em4jnsGUpxY517IW3DnKOiPPp/fZZq
# kHimbdLhnPkd/DjYlPTGpQqWhqS9nhquBEKDuLWAmyI4ILUl5WTs9/S/fmNZJQ96
# LjlXdqJxqgaKD4kWumGnEcua2A5HmoDF0M2n0O99g/DhO3EJ3110mCIIYdqwUB5v
# vfHhAN/nMQekkzr3ZUd46PioSKv33nJ+YWtvd6mBy6cJrDm77MbL2IK0cs0d9LiF
# AR6A+xuJKlQ5slvayA1VmXqHczsI5pgt6o3gMy4SKfXAL1QnIffIrE7aKLixqduW
# sqdCosnPGUFN4Ib5KpqjEWYw07t0MkvfY3v1mYovG8chr1m1rtxEPJdQcdeh0sVV
# 42neV8HR3jDA/czmTfsNv11P6Z0eGTgvvM9YBS7vDaBQNdrvCScc1bN+NR4Iuto2
# 29Nfj950iEkSMIIE2jCCA8KgAwIBAgITMwAAALRDOhz+trpSiQAAAAAAtDANBgkq
# hkiG9w0BAQsFADB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQ
# MA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9u
# MSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMDAeFw0xNjA5
# MDcxNzU2NThaFw0xODA5MDcxNzU2NThaMIGzMQswCQYDVQQGEwJVUzETMBEGA1UE
# CBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9z
# b2Z0IENvcnBvcmF0aW9uMQ0wCwYDVQQLEwRNT1BSMScwJQYDVQQLEx5uQ2lwaGVy
# IERTRSBFU046MTQ4Qy1DNEI5LTIwNjYxJTAjBgNVBAMTHE1pY3Jvc29mdCBUaW1l
# LVN0YW1wIFNlcnZpY2UwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDg
# gU+7tdEwOj+DALfMVp/3m6y6s11kER6C1nrX7iD7s9EIAWOXV6fC4kxWqLVX26DG
# 37PRGLEefpGsGRlRbXP+ni1tJEIgxMjvRmnQbxxMYWqUMw+UPtuibyUqvxnSzgM6
# UhWARWUb/c+1/zeyaGaZZa3u/76BTUOeC3gJ1iqPPYq0BzPZsFAkUe9/9STUFQyP
# dhjYVry1baMpdNh1B0hAGY5mGJECAnAbQdv5J6EZdcaWqPpBL7t6xTSmMKCXk8ca
# bABagraMAGeSy8xN0myp48ReeQsBla6opLki/vlFXj99GRthnDd02aNRxe5I2VQz
# FINfsucPe7AfyZe+mYVxAgMBAAGjggEbMIIBFzAdBgNVHQ4EFgQUDJOrRdRsC3cv
# 8ytX8+kkxIcH9F8wHwYDVR0jBBgwFoAU1WM6XIoxkPNDe3xGG8UzaFqFbVUwVgYD
# VR0fBE8wTTBLoEmgR4ZFaHR0cDovL2NybC5taWNyb3NvZnQuY29tL3BraS9jcmwv
# cHJvZHVjdHMvTWljVGltU3RhUENBXzIwMTAtMDctMDEuY3JsMFoGCCsGAQUFBwEB
# BE4wTDBKBggrBgEFBQcwAoY+aHR0cDovL3d3dy5taWNyb3NvZnQuY29tL3BraS9j
# ZXJ0cy9NaWNUaW1TdGFQQ0FfMjAxMC0wNy0wMS5jcnQwDAYDVR0TAQH/BAIwADAT
# BgNVHSUEDDAKBggrBgEFBQcDCDANBgkqhkiG9w0BAQsFAAOCAQEAArVhW6Cn0mqs
# Ji+2wjSjdPuoe5Cxgi2oiRJdpPaCC1k9J+d6HXks+Mtyz0dr72/e65Jt7q/7XqGR
# hHjjX1F7xJcx4FCN7bqZ94gqv1Fq4iPkN0fdZuLFhQjs/nVx63ptSYklIR2djhbk
# WKTmqJW1m7SToYosuJwhOrwBUR+Y4J/z7epQzLs3hClq8CJspU+uExF5ZmRwJ6MM
# +rTeTLtQfsSff+mBUQTerhRf5g4MEIG6Rqw7YhLntdEKMPDTKez603Axbgp6JFHC
# IuYOIrdDUapTVSL1JLXn03V4KaE6W2kK4K18mc+ftJIoB36qcMQyhltKDthEtvU+
# Zx95w/IrU6GCA3YwggJeAgEBMIHjoYG5pIG2MIGzMQswCQYDVQQGEwJVUzETMBEG
# A1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWlj
# cm9zb2Z0IENvcnBvcmF0aW9uMQ0wCwYDVQQLEwRNT1BSMScwJQYDVQQLEx5uQ2lw
# aGVyIERTRSBFU046MTQ4Qy1DNEI5LTIwNjYxJTAjBgNVBAMTHE1pY3Jvc29mdCBU
# aW1lLVN0YW1wIFNlcnZpY2WiJQoBATAJBgUrDgMCGgUAAxUAB8CVl64uTm7J03X2
# 2YlRmIsgbTqggcIwgb+kgbwwgbkxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNo
# aW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29y
# cG9yYXRpb24xDTALBgNVBAsTBE1PUFIxJzAlBgNVBAsTHm5DaXBoZXIgTlRTIEVT
# Tjo1N0Y2LUMxRTAtNTU0QzErMCkGA1UEAxMiTWljcm9zb2Z0IFRpbWUgU291cmNl
# IE1hc3RlciBDbG9jazANBgkqhkiG9w0BAQUFAAIFAN0Q01cwIhgPMjAxNzA3MTIx
# NjU2NTVaGA8yMDE3MDcxMzE2NTY1NVowdDA6BgorBgEEAYRZCgQBMSwwKjAKAgUA
# 3RDTVwIBADAHAgEAAgIBEzAHAgEAAgIpJjAKAgUA3RIk1wIBADA2BgorBgEEAYRZ
# CgQCMSgwJjAMBgorBgEEAYRZCgMBoAowCAIBAAIDB6EgoQowCAIBAAIDB6EgMA0G
# CSqGSIb3DQEBBQUAA4IBAQBpIwwqtrlHW2Iqz2AfN7+7c+fJDjezLZFwKzWO11AK
# M3MHRq9T7O3Cpkoi+aZaS3hY+0hr5U1Fhi0v8XO7zVKr4DbmNSpWbNidgSkVnAjF
# pwDEkJJFys2zOuxuFavbfrnzncGWvxd9KrMYdzpSFMa0szY3G4ta/Rc0y4ZgKFFM
# OQfN2AMd6UVw83cuM6PE6MVJKxBjGZN87K+LMEyc+hscxqAcJD88j+6byXLmkLzf
# d/o5jOxJez8Qiug/jLDuNX7N2/PHqh//6QF3RMETPdadJli8MUIz+Oh5KVL9D4Pl
# O4s2JhBYHfyHg6YU6J1uVrnkMu43EwPrgKv0y+Z/9bhoMYIC9TCCAvECAQEwgZMw
# fDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1Jl
# ZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEmMCQGA1UEAxMd
# TWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIwMTACEzMAAAC0Qzoc/ra6UokAAAAA
# ALQwDQYJYIZIAWUDBAIBBQCgggEyMBoGCSqGSIb3DQEJAzENBgsqhkiG9w0BCRAB
# BDAvBgkqhkiG9w0BCQQxIgQgqF36slI4gnUGTkbIhf3mflQ5JKyeKJsN9wje33ij
# 6TYwgeIGCyqGSIb3DQEJEAIMMYHSMIHPMIHMMIGxBBQHwJWXri5ObsnTdfbZiVGY
# iyBtOjCBmDCBgKR+MHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9u
# MRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRp
# b24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEwAhMzAAAA
# tEM6HP62ulKJAAAAAAC0MBYEFJVu0TKPzTCIHfxnbQz65jdgH9ZTMA0GCSqGSIb3
# DQEBCwUABIIBAELzSL5UUeiRLvUVfacZG05gTRhsmWs6OOEzUhL5osEQUClqTR7N
# TZ92RDBQn/hGQcCY/Qg74mKRP0qa3jt/t/0MwU1wXs4cF4dPVhHB7tBYvunEw5qw
# HZDTGM6SwcBQnUrz6jaQ9lYN51SJA1ccVcZF7SCzgEvYYQZxqdd657GD3nabB0dE
# +brxnnoRyVhzbd7MnsCPeoQw7xZIdYbWaxCOn8EzRauiHPYZBATBV72iYkLkFuzp
# CVC5XgVz+AMuTXoOCWLPbYBmBIUyawJv+Y76a/q+lI6p/1z92K/pucVuSlOn+KPN
# 4IHGitzTazxPFWZzEEOup0VEfyRQlggSkpA=
# SIG # End signature block
