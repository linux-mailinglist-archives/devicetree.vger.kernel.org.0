Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 449D0270FD1
	for <lists+devicetree@lfdr.de>; Sat, 19 Sep 2020 19:33:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726481AbgISRdz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 19 Sep 2020 13:33:55 -0400
Received: from mout.kundenserver.de ([212.227.126.135]:60589 "EHLO
        mout.kundenserver.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726449AbgISRdz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 19 Sep 2020 13:33:55 -0400
Received: from buildfff.adridolf.com ([188.192.134.246]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1M7NaW-1kP9mS2gAO-007lo6; Sat, 19 Sep 2020 19:28:36 +0200
From:   Adrian Schmutzler <freifunk@adrianschmutzler.de>
To:     Rob Herring <robh+dt@kernel.org>, Pavel Machek <pavel@ucw.cz>,
        Dan Murphy <dmurphy@ti.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org,
        Adrian Schmutzler <freifunk@adrianschmutzler.de>
Subject: [PATCH v2 2/2] dt-bindings: leds: add LED_FUNCTION_RSSI
Date:   Sat, 19 Sep 2020 19:27:33 +0200
Message-Id: <20200919172733.57217-2-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200919172733.57217-1-freifunk@adrianschmutzler.de>
References: <20200919172733.57217-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:xF8lZ97J5TkLr+xdY1CRykfby984Ok/+OiRiII1JSjNGTpNrmmd
 tgBr0NWNiIkEJOBcaRBdhyp3wC3+Q/4bvuZzHhbCZ8SaCzuYoCaDdlJnbv1Aifmt/Sz+s5X
 E1UXdJtvTDGS76kL3mhojhjYdXeerV9DM7AjbI5+6TpDSePi+Zp0BLHHyZwppHo2aMEz5TP
 RyH4tqw/stmcMVcA/V++Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:4iKBlijwZZM=:gaRdaIxtLi9u8g8KQTPTyP
 nXGG7xtpCSiIvV+JN8fBXDnwjT7YAMetPeSXN+j388FXmLszhVmIoZuO5x5H1rPKbUKUgk+fb
 l8arOrpV+3GslVPyja0gCw/EK6fBHKpZylb+ABPQvL4qRnFa0nej3g2Fly0td3arqdBhK2yOA
 o+J2NIoL0jmS6rrfEG2DZAQawG5840nSOR0cFGg69CstR20QQJ22IGqwIv7TlpXyQpGAOfc52
 faZKhloPB6/dJeG+ZpLXVF0tONHszB1okwiMw6f8fionrzhvhY0dnb+CEoPoJ4UKx/RhvEyRM
 obtok1fVEJLqg9U0XF/nQYPfRN+elbXmWA9E/rcB9RZ3zONGvj6sa1AozMJ3M9wwcy4YnhSB+
 PdLGYmc46ptFpEuGDv36/xovryPHXq8ndINwXzHa2oGDxOHH/XPpy6mTX7zEPYjzFU1JuVQxg
 e0feeFbDvUmkaOmdqjGZYpJrbCPBtrR2OU+Pz2nU3FLFTO+KMGsfT+KSFmgTD+Yp0D2tzWsPK
 Mux7VQmgtXQ1CUWfxY9V/VtUAFsv6/K6CF89ZDmB6/ztjU675MTPTBohsBmspGmYUrc/P3bP4
 N8CpTMipqdHiWR7DBi5Me9gpmplJ8b4Zh4pG+4KNVDcJ6DmHIguhIUSiPk/zZKmJ4gvJANr2r
 DLiVz7d5OHkGppfFP0pO1JysICLbK/VfQwJOywkQRrzRZKxbVke0eHUVIU3LQGnvBLY/Lc4KZ
 iepNkUNmmF7pL+IcuehE8ntWC6Unxw9AhqItli7eW2gOPCVcvTbUsFKYwhHaAGJazkyD7FhfY
 Qgige6XPuNwxC9+1d+VOx3GyxIn7NtncozRxHy1R3Mc1+VBDnDRmlP0xHeZqdl7g0TucbBfai
 cgSSQ2v//fqtHW72v1Qw==
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

Changes in v2:
none
---
 include/dt-bindings/leds/common.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/dt-bindings/leds/common.h b/include/dt-bindings/leds/common.h
index debbd406ff17..c4821a44e422 100644
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

