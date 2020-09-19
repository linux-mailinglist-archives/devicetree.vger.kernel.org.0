Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C71C2270FD0
	for <lists+devicetree@lfdr.de>; Sat, 19 Sep 2020 19:33:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726463AbgISRdx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 19 Sep 2020 13:33:53 -0400
Received: from mout.kundenserver.de ([212.227.126.134]:38643 "EHLO
        mout.kundenserver.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726449AbgISRdx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 19 Sep 2020 13:33:53 -0400
X-Greylist: delayed 306 seconds by postgrey-1.27 at vger.kernel.org; Sat, 19 Sep 2020 13:33:52 EDT
Received: from buildfff.adridolf.com ([188.192.134.246]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1Mrwnt-1knjxx1YHN-00o1VP; Sat, 19 Sep 2020 19:28:36 +0200
From:   Adrian Schmutzler <freifunk@adrianschmutzler.de>
To:     Rob Herring <robh+dt@kernel.org>, Pavel Machek <pavel@ucw.cz>,
        Dan Murphy <dmurphy@ti.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org,
        Adrian Schmutzler <freifunk@adrianschmutzler.de>
Subject: [PATCH v2 1/2] dt-bindings: leds: add LED_FUNCTION for wlan2g/wlan5g
Date:   Sat, 19 Sep 2020 19:27:32 +0200
Message-Id: <20200919172733.57217-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:tJS1jptO4dxvs5pFeZ/EXR4mk/L90eRsDR3y7NsmBJR/tdI+mjv
 Q8NWtcGzonE9aUXe9Md3ntOWK883nGILur2NiSPNazWq7+/moxu5m4PXXHW5IFbcQQdoLEG
 uXE/mHwfRUlvUgvbdMnIJAeo1Q6gAoyY5DLmLPEg9djFWoPGBK6Dd0xUfnBeRnkyZNshPO1
 iUfrZ/lYKwmBORW1N3hmw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:YvqbjMGBkGM=:4iQX257/5AJRHgAn8v22Bk
 mdERwaJqW8TSqwJRIAWLTM+bVKNo+Mj0Xnwg/b6xqOuk+i3I4NIGY3lYzAi3wtoHZAeS9Sk1U
 AKOxuDI+obHSbXSdsjUa8nyofi9GKv7H5XNKSd5fSNVKNwj9LOUuAyt9JDwmt494FBzv0Ze/d
 SD3TT1D1sDNSfbxCr0N699q3PlGnxHct5HMlMVCjVdU8hQIe7ZebPXSVxGhTgz3VEX1kJduGz
 R2RZ4K5/1/jprWtESKEPEs5h7tsSbSNcpIUFZh32RqJTBaIMk0Uz2xApo1e5A+6e7rVEmX6XK
 Wn//Vx1fSyrSoLsTwLdYEtgiDLzdVVVmVsVWysUUiSeD/vE0Ix/5Bii4WgcMIzxquWx6Mwh25
 mMDUW1ZDUBRUIrHkC4KwRNaOCLGElG74Y0mKEw5uj2KZgxVU/MdUelvaHByr8MiZbb/w7kRyH
 pEuimDc24R1Zsh4eXnv7deYR9fVkIYilogmDb9iE4/2kbhgznQIIzXWsGz/+7hsXG26Z8iSp7
 bf2II183VXw8lDVd3OmT33PsisVEE88fpI8ZKp+SvWWjaPM8S8McV8w1dIGsKb/ZSnSG9KdjE
 /qu191XVWRnyblTLs3VC8zFiBJL87x+LRPGGeOIFEC8Gpeyy2QIlb4VL8kotpnsHxCPHILOuD
 UlMsj1ToMU6uZdK5JOdrL+MZoJ2misDDbWC2lMd8ARY27BoDNwGHoZLcaL7AGhDaXPEHCId4+
 r3FcGPeT7OLJyvI2rMJA+MptI6kYA4SIv/NJRtq3bynRemsqNhcNzLJ5MH6kAb87LM8MRX0fV
 /KPwbWRIWfF3sAq3X4mhZg2k2XWlhO61qiPwP24lRL6l3EBKjxUGR71T4KPcPQqhJbmWaUq/A
 9csCK94NCSgCNP0dZ0Yw==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Many consumer "routers" have dedicated LEDs for specific WiFi bands,
e.g. one for 2.4 GHz and one for 5 GHz. These LEDs specifically
indicate the state of the relevant band, so the latter should be
included in the function name. LED_FUNCTION_WLAN will remain for
general cases or when the LED is used for more than one band.

This essentially is equivalent to how we use LED_FUNCTION_LAN and
LED_FUNCTION_WAN instead of just having LED_FUNCTION_ETHERNET.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

---

Changes in v2:
- Without typo this time. Sorry.
---
 include/dt-bindings/leds/common.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/dt-bindings/leds/common.h b/include/dt-bindings/leds/common.h
index 52b619d44ba2..debbd406ff17 100644
--- a/include/dt-bindings/leds/common.h
+++ b/include/dt-bindings/leds/common.h
@@ -89,6 +89,8 @@
 #define LED_FUNCTION_USB "usb"
 #define LED_FUNCTION_WAN "wan"
 #define LED_FUNCTION_WLAN "wlan"
+#define LED_FUNCTION_WLAN2G "wlan2g"
+#define LED_FUNCTION_WLAN5G "wlan5g"
 #define LED_FUNCTION_WPS "wps"
 
 #endif /* __DT_BINDINGS_LEDS_H */
-- 
2.20.1

