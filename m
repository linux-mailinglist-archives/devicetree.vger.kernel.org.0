Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5BD2E4FC563
	for <lists+devicetree@lfdr.de>; Mon, 11 Apr 2022 22:02:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240425AbiDKUEv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Apr 2022 16:04:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59994 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349767AbiDKUEt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Apr 2022 16:04:49 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.74])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B767E1FCC0
        for <devicetree@vger.kernel.org>; Mon, 11 Apr 2022 13:02:34 -0700 (PDT)
Received: from localhost.localdomain ([37.4.249.94]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MuUrM-1nw5Nv0g8g-00rZ0y; Mon, 11 Apr 2022 22:02:05 +0200
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     bcm-kernel-feedback-list@broadcom.com,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Phil Elwell <phil@raspberrypi.com>
Subject: [PATCH 4/6] ARM: dts: bcm2835-rpi-b: Fix GPIO line names
Date:   Mon, 11 Apr 2022 22:01:41 +0200
Message-Id: <20220411200143.4876-5-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220411200143.4876-1-stefan.wahren@i2se.com>
References: <20220411200143.4876-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:HJgaSy8A+0EDxH1dGCmk+rvbQzMnAKboKGPyiaH9iFU+ISdqomx
 CLcl6MPhKpUYTaU3mHvm//0aVNAxNsWeVVM4H5OpT6e4YeJXhMF+MPs5QTTTbQIsOty1jC6
 2M5NlF+oQw1Od+hhMM/c3QoegIzhguvcn/z/z3DKwm2wC5BF5rnZ1tGTXLF95xEfPlJW/pB
 tZQFW9N8au25Bg/ZVGg+w==
X-UI-Out-Filterresults: notjunk:1;V03:K0:Kf/XypCv7s0=:2dlY304k799dC+PYg9B2M2
 oUh2BSfhVpWu/Zvzo1WAUK/fU6xSYzofyX8qef+ZkgsoUTzo7hDbUGeIFWkNnErvPbwtGi3dA
 PXUtvONU1pX5ge+wEyI47THfcuc57fN1S71Q4DNPDKPx2toB/T5gs6I3wAoewMpzDPjqJbgh0
 jLa5CII+1LOmdROZYHLLtnDcQMk25Bx7rNI76yH+OSR2AqgkgrDFmalYHsQEXQloFvaIa90Wp
 D79xKrAXso/W5aVh20ruo7kVOeRTROdydX9luT6AbCot2ytpIxwMBjspv0cIGwzRiShOSXtgM
 mwwuhYxJyC5ges07mrjMTnp1dp7Iblu/ipj/QVYLvmSv89zPtLqhYvfj+q4u+P3w3OpJZxsYu
 LUBwXgEucx4/3qSlsar343hcHViSIKWz43Rm6AXaKgtkE7WMGHwCz8Vo85nABFxMngHYgk8Q0
 ymYvvXm+XtmTGd2hBDFgSq5LXiIKzQrmMnKua3yHZDlAPmFvt8uFZAjDu3QlKeNiCf0JcjWMC
 tRgS4SS6wEJbqTXh7CsYlcmUJfEa5cV1KZt14V889Pp/9Or6J50OwJUxCIH6JhcjnQDD2Q9Y7
 SNoO1ldaBHV75YR0j39uMVx8zKmSAbTKD2yQnniRwd/pDcD7GlQ6xmMmfhyVMD9uxDk8busyZ
 t3ie2YGlYY+wX13RLSEzmZ9EJLZJcMDzb4DAHfRqQ8Hgo6fH1Em1dUR4GZVMtZGI2kZpg5YIa
 DZXkknYmV38kjUs/
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Recently this has been fixed in the vendor tree, so upstream this.

Fixes: 731b26a6ac17 ("ARM: bcm2835: Add names for the Raspberry Pi GPIO lines")
Signed-off-by: Phil Elwell <phil@raspberrypi.com>
Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 arch/arm/boot/dts/bcm2835-rpi-b.dts | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boot/dts/bcm2835-rpi-b.dts b/arch/arm/boot/dts/bcm2835-rpi-b.dts
index 1b63d6b19750..25d87212cefd 100644
--- a/arch/arm/boot/dts/bcm2835-rpi-b.dts
+++ b/arch/arm/boot/dts/bcm2835-rpi-b.dts
@@ -53,18 +53,17 @@ &gpio {
 			  "GPIO18",
 			  "NC", /* GPIO19 */
 			  "NC", /* GPIO20 */
-			  "GPIO21",
+			  "CAM_GPIO0",
 			  "GPIO22",
 			  "GPIO23",
 			  "GPIO24",
 			  "GPIO25",
 			  "NC", /* GPIO26 */
-			  "CAM_GPIO0",
-			  /* Binary number representing build/revision */
-			  "CONFIG0",
-			  "CONFIG1",
-			  "CONFIG2",
-			  "CONFIG3",
+			  "GPIO27",
+			  "GPIO28",
+			  "GPIO29",
+			  "GPIO30",
+			  "GPIO31",
 			  "NC", /* GPIO32 */
 			  "NC", /* GPIO33 */
 			  "NC", /* GPIO34 */
-- 
2.25.1

