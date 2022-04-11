Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A41384FC564
	for <lists+devicetree@lfdr.de>; Mon, 11 Apr 2022 22:02:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242334AbiDKUEv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Apr 2022 16:04:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60008 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349769AbiDKUEu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Apr 2022 16:04:50 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.74])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B83F5289A7
        for <devicetree@vger.kernel.org>; Mon, 11 Apr 2022 13:02:34 -0700 (PDT)
Received: from localhost.localdomain ([37.4.249.94]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1Mf0FY-1oBQMz3Fd4-00gVLs; Mon, 11 Apr 2022 22:02:03 +0200
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
        Phil Elwell <phil@raspberrypi.com>,
        Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH 1/6] ARM: dts: bcm2835-rpi-zero-w: Fix GPIO line name for Wifi/BT
Date:   Mon, 11 Apr 2022 22:01:38 +0200
Message-Id: <20220411200143.4876-2-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220411200143.4876-1-stefan.wahren@i2se.com>
References: <20220411200143.4876-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:arPepFxzH6bl3/vxHF/8avQYm2SM48dVWsl95QrFPqm80fhxp1V
 EaQngWzFK8BzTKlk6fCMqyMPJLCm/pfl5HsMExpva2yxpmi8ALBKi1sAmQ8K5vwid/DvEvJ
 ytJHsjKK9rJ1iRIrcye5Axbl1weF2yL63Af8Rfg9DFevRKpNTupD4q1ZfLVwlcoTPIGL7bB
 gqFGFszHDqLS61jRXaqLw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:LL0iyvUglYY=:vCfhzOsWu/XhL2Yn6Tuqh3
 Qd+TFW1AfDmIljZWJYFN+26JaA/6bVZJcXqUmYjDVgob/K3OVEJ2h3PYYmmRNlnHHNT+Rarld
 T7wi6aSPSBTS3xoViW/SDNphlXXw5gTB7HRw41gqxH7JyCCO3dvnV3lP5eYzt5uQmJ6in2DLC
 q5SiL5OK4IRH2srn1GP9MxRDu4guOoPuu7lLegkRboEweELHvxAa7l5wfl/46RNGTkrEYz4IV
 yHQQ/aPYknhTLc+iwrtdxvh+LaFr6uBVO4mA1crGA5dq9PYt2wfdOtKcIG05krIDAEGC7IhTi
 z0qmhnrqTS6aUVF2nNHaoRp5iAXsQPls0yRjM7pA9wwrA3L2FDQTpZSCX896Qx+FahuI6giH6
 1tp+F4RriibP+8ojDfKTGQ+nIxWw8VCOu93Qoo+1JyMdr8v15uyCvNvzxrS8qFTdy8e8SAtV9
 TeA753BJrOi165Cs5KrBCXPwEh4VGGrZgqRH9+wITaTVH1kHsHJQlz2fyhtjVjkSZ6mG8a+sV
 1RtREQ45OFV+Ifl1EnWoe3m8ObhJJbO+hUTnqGEpkZq5ueGC7kcqsZoDz4FCj+3ifKmXQx81i
 KM9XpFix40+bWN7G6t1Q5tXxDUaBDu8jEpcFx3BfXN/o8q6kvcCdmcd/J9A2D8Vq0YklxVqZT
 zxEHUOMaG3MR6hoPCXMe2rmMgmsQZkfNpo436li0raOtTDRzn1cK5t5un6RdG9JeaKwNIbpws
 1DmBluBX7jVQsYxz
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Phil Elwell <phil@raspberrypi.com>

The GPIOs 30 to 39 are connected to the Cypress CYW43438 (Wifi/BT).
So fix the GPIO line names accordingly.

Fixes: 2c7c040c73e9 ("ARM: dts: bcm2835: Add Raspberry Pi Zero W")
Signed-off-by: Phil Elwell <phil@raspberrypi.com>
Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 arch/arm/boot/dts/bcm2835-rpi-zero-w.dts | 22 ++++++++++++----------
 1 file changed, 12 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boot/dts/bcm2835-rpi-zero-w.dts b/arch/arm/boot/dts/bcm2835-rpi-zero-w.dts
index 243236bc1e00..8b043ab62dc8 100644
--- a/arch/arm/boot/dts/bcm2835-rpi-zero-w.dts
+++ b/arch/arm/boot/dts/bcm2835-rpi-zero-w.dts
@@ -74,16 +74,18 @@ &gpio {
 			  "GPIO27",
 			  "SDA0",
 			  "SCL0",
-			  "NC", /* GPIO30 */
-			  "NC", /* GPIO31 */
-			  "NC", /* GPIO32 */
-			  "NC", /* GPIO33 */
-			  "NC", /* GPIO34 */
-			  "NC", /* GPIO35 */
-			  "NC", /* GPIO36 */
-			  "NC", /* GPIO37 */
-			  "NC", /* GPIO38 */
-			  "NC", /* GPIO39 */
+			  /* Used by BT module */
+			  "CTS0",
+			  "RTS0",
+			  "TXD0",
+			  "RXD0",
+			  /* Used by Wifi */
+			  "SD1_CLK",
+			  "SD1_CMD",
+			  "SD1_DATA0",
+			  "SD1_DATA1",
+			  "SD1_DATA2",
+			  "SD1_DATA3",
 			  "CAM_GPIO1", /* GPIO40 */
 			  "WL_ON", /* GPIO41 */
 			  "NC", /* GPIO42 */
-- 
2.25.1

