Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 62FA94FC560
	for <lists+devicetree@lfdr.de>; Mon, 11 Apr 2022 22:02:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233371AbiDKUEp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Apr 2022 16:04:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240425AbiDKUEo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Apr 2022 16:04:44 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.10])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1EB951EAC0
        for <devicetree@vger.kernel.org>; Mon, 11 Apr 2022 13:02:28 -0700 (PDT)
Received: from localhost.localdomain ([37.4.249.94]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MA7Om-1npa0i09Kk-00BaR6; Mon, 11 Apr 2022 22:02:06 +0200
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
Subject: [PATCH 6/6] ARM: dts: bcm283x: Align ETH_CLK GPIO line name
Date:   Mon, 11 Apr 2022 22:01:43 +0200
Message-Id: <20220411200143.4876-7-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220411200143.4876-1-stefan.wahren@i2se.com>
References: <20220411200143.4876-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:KrFedrT8IfT+32vpSLgHtasxeDaJm/Jl+XoqHPoIBafnGkj/liU
 M3MX777w2SWykRFgOkpLhN7dY2GIBPIyR0w19R03Zb1vlo6rVmMO+/ChQW21ABFJFDcNLas
 l1dgkaiYZD3sZdei3ZdsWEqXVR3NbeEXnEijg8VpfC9lA3aQmQ6n0uU98rflYTzhcev9P8K
 vs7QobOAVFjoSbxLsCWag==
X-UI-Out-Filterresults: notjunk:1;V03:K0:fsKYnIkBpeA=:eN9imY8hgdrnhDvpsI0Nft
 C69IfOWbZCh/i7cUIzKrZXMdx8AJMxkJsSlBbQwyl/SHKNWBPb9ZwpaJagSLT3zeWgg0+wUj6
 GBfNNppal1oidvrauHRm+varpUno4TngzlSOYKpBviNBXz8seH1O6TPMCS08JUgp2TGF5aldV
 FWqzcJOJ/SIU6ZdBn69Z+hE1Hf7sZeT/Lz/L1STujeCmZyHVc8spo6OSl2xXl/tqTLn7xWQpq
 5/RFVRoJoig6JXJMlCpGVJZZNxvv9h0ZtX2F57hIdQzKXp/KoFFNuh7cjAHWZ88Cc2mNUTQgH
 5VMlni0COmls5d5XL3IBz81yi/35ZbVFYks+RdyZ1vYAwdRqXBuRB+6wplc10AQ3UEX1EnYBn
 s+NFbdoekb+uFksL/KHOIxRjtmQ6q8Q3TBLtJJPm7CE35qIoiu5DBsfTHiQeywkFuy/qDoHPK
 GKGh2UE+oN5jTlrJLu5RsJIYovV0NAAi+w5AjM2NxR3fNA9Ki9fuiCzIcf/zxWz4ttj7OeYvC
 gu8uX4FkBaNmIhN5owW68Nw8z+gqUAA5leqPSuYb/ipcXwqj6ZA1PhExHrro7MJ56msoW1gbE
 Agka01p5UXcuY3jkG79RI+dK/HgrtR0V5I2E8DzcPEqdNqcFZC3Zos1iK+M77Tu99vFruXy7g
 chj7qaaoZNvsdbxo6FmKLUbNevexp4F/xYcJpIfvJJ6/bJJaF9VaT9zduBa3ElgxJjfIf9YHl
 rWlCaMxVCtCtJZjx
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Phil Elwell <phil@raspberrypi.com>

The GPIO line name ETHCLK is not aligned with the other signals like
WIFI_CLK. Recently this has been fixed in the vendor tree, so upstream
this change.

Signed-off-by: Phil Elwell <phil@raspberrypi.com>
Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 arch/arm/boot/dts/bcm2835-rpi-b-plus.dts   | 2 +-
 arch/arm/boot/dts/bcm2836-rpi-2-b.dts      | 2 +-
 arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts | 2 +-
 arch/arm/boot/dts/bcm2837-rpi-3-b.dts      | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/bcm2835-rpi-b-plus.dts b/arch/arm/boot/dts/bcm2835-rpi-b-plus.dts
index 7b7c363e5ee8..248feb2ed23d 100644
--- a/arch/arm/boot/dts/bcm2835-rpi-b-plus.dts
+++ b/arch/arm/boot/dts/bcm2835-rpi-b-plus.dts
@@ -82,7 +82,7 @@ &gpio {
 			  "CAM_GPIO0", /* GPIO41 */
 			  "", /* GPIO42 */
 			  "", /* GPIO43 */
-			  "ETHCLK", /* GPIO44 */
+			  "ETH_CLK", /* GPIO44 */
 			  "PWM1_OUT", /* GPIO45 */
 			  "HDMI_HPD_N",
 			  "STATUS_LED",
diff --git a/arch/arm/boot/dts/bcm2836-rpi-2-b.dts b/arch/arm/boot/dts/bcm2836-rpi-2-b.dts
index c824a2cea02e..3635502b1e0a 100644
--- a/arch/arm/boot/dts/bcm2836-rpi-2-b.dts
+++ b/arch/arm/boot/dts/bcm2836-rpi-2-b.dts
@@ -82,7 +82,7 @@ &gpio {
 			  "CAM_GPIO0",
 			  "SMPS_SCL",
 			  "SMPS_SDA",
-			  "ETHCLK",
+			  "ETH_CLK",
 			  "PWM1_OUT",
 			  "HDMI_HPD_N",
 			  "STATUS_LED",
diff --git a/arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts b/arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts
index fd4ac6f2d077..ec721d323ac5 100644
--- a/arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts
+++ b/arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts
@@ -109,7 +109,7 @@ &gpio {
 			  "SD1_DATA3",
 			  "PWM0_OUT",
 			  "PWM1_OUT",
-			  "ETHCLK",
+			  "ETH_CLK",
 			  "WIFI_CLK",
 			  "SDA0",
 			  "SCL0",
diff --git a/arch/arm/boot/dts/bcm2837-rpi-3-b.dts b/arch/arm/boot/dts/bcm2837-rpi-3-b.dts
index 00ea439d601d..fb6a417d73e7 100644
--- a/arch/arm/boot/dts/bcm2837-rpi-3-b.dts
+++ b/arch/arm/boot/dts/bcm2837-rpi-3-b.dts
@@ -102,7 +102,7 @@ &gpio {
 			  "SD1_DATA3",
 			  "PWM0_OUT",
 			  "PWM1_OUT",
-			  "ETHCLK",
+			  "ETH_CLK",
 			  "WIFI_CLK",
 			  "SDA0",
 			  "SCL0",
-- 
2.25.1

