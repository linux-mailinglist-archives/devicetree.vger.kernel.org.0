Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B596D270FC2
	for <lists+devicetree@lfdr.de>; Sat, 19 Sep 2020 19:26:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726537AbgISR0X (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 19 Sep 2020 13:26:23 -0400
Received: from mout.kundenserver.de ([217.72.192.75]:47547 "EHLO
        mout.kundenserver.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726449AbgISR0W (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 19 Sep 2020 13:26:22 -0400
Received: from buildfff.adridolf.com ([188.192.134.246]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1Md6V3-1kskJR3frX-00aI0z; Sat, 19 Sep 2020 19:21:02 +0200
From:   Adrian Schmutzler <freifunk@adrianschmutzler.de>
To:     Rob Herring <robh+dt@kernel.org>, Pavel Machek <pavel@ucw.cz>,
        Dan Murphy <dmurphy@ti.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org,
        Adrian Schmutzler <freifunk@adrianschmutzler.de>
Subject: [PATCH 2/2] dt-bindings: leds: add LED_FUNCTION_RSSI
Date:   Sat, 19 Sep 2020 19:19:13 +0200
Message-Id: <20200919171913.56765-2-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200919171913.56765-1-freifunk@adrianschmutzler.de>
References: <20200919171913.56765-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:X65rZNj8ZNzhyeKQCyk+CfHkTF1m3K7MBaOg6SHtM++umzNlRVD
 dKjPUAQ8Ha5qx4LV6rKQPOe8lh84MvytywSFSAZOqeojcsr+3tkAdaKo52oplAvCwH+9OgB
 XlgrgKqj8OOLKSruDwO7DtYqq/C+7UaacdCp9VnWbF0VueqM+/0zV4+txS+Vb+pgqSYRcYS
 1Il4MaEw5aZWfoqqFqNvw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Wb5d/nj52p0=:8ZsJX4lHHCe5zTGsZkDPz3
 c2Xa/ZeXRfY/1suoG6rdC0Xe1Lc7OhLSlgGGVHAVf8xfV5NLZxfjbNwjSSGQFDf7/WRRJWu3r
 7yjCpWzdetuJkZE5I8ho26Gq+GehPxHhmtGa4VAex9eZ6k5rKUzBQylh1yUQUE3V5gsB1jvLW
 Vx01rNh1MYUS5NiDrC3D8wXh2hAsQttoHDUitsaEQgMzuaA2oFfFSi9VGPoKLufNC386vjeuJ
 To8bh8WCmHAsYLDAkEkjqDFqmFx6gxeEUfp0CyRQLV9L8YvuCJM1In8Xy1p7eko7FjzZZC+WL
 +Df0x+H651fCGt9o6YzKUOJGpUYYmDBYuzb3XhhvhpdXPzqwyfmzOwNcS11OCMGsSOTBiniBW
 EhiwczqXZ+sGPnyAtdPv44GYjjGnjW1OVPpk7zINVGeck0ORSsHjedT+Pqsti7xUqPn0lpEsZ
 bkAIy+iYRFEcf6w1Bc3LryFs7RJjsWcJMqzYCBRwq5vf8byr16hNlyugkZgi/9ae2i9DsHycL
 DwuCg7qyLWFwmNkAzhWSixtttPlMODBP6HRJ1ehuP81SU8K/arVCZtV1lQ/olp6wULuuiThOr
 4gMrnwghzW3l6nS/BTVQvTzIjdjvIuzFkPtVa3La0WzaWliB4Zs1ZswbIWQPQyT2+N+8eG0Pk
 vKBS+/UFiuyoAIeTnLNJaFHAQXNI8q3Q8MOtlBNRzWG7PWzCWAu9+PpIkfyjAI+Nc5O9SlnKB
 qGPBZT9zSiyR1qHCKYS4CLri5/aGrBFQULjwlqnOSf8I/tOs1ZWxHekwNBEjI1TLA8WWyXec1
 D5fR0C57jCG1Sq9bx5/T2VkSLZmh8oE3yPsbv5r0WwKkSvcAviWjEepV6MniU/SUbcKR+3REQ
 Yj6/aZYFyDK6yRJ/ZCvA==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Several consumer "routers" and CPE devices have dedicated LEDs to
show the received signal strength indicator (RSSI). This is
different from the "WLAN" LEDs that just show enabled/disabled
state and sometimes rx/tx activity.

Add a LED function for these LEDs.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 include/dt-bindings/leds/common.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/dt-bindings/leds/common.h b/include/dt-bindings/leds/common.h
index 52db8a9032d0..139573579e7f 100644
--- a/include/dt-bindings/leds/common.h
+++ b/include/dt-bindings/leds/common.h
@@ -81,6 +81,7 @@
 #define LED_FUNCTION_MTD "mtd"
 #define LED_FUNCTION_PANIC "panic"
 #define LED_FUNCTION_PROGRAMMING "programming"
+#define LED_FUNCTION_RSSI "rssi"
 #define LED_FUNCTION_RX "rx"
 #define LED_FUNCTION_SD "sd"
 #define LED_FUNCTION_STANDBY "standby"
-- 
2.20.1

