Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 361594FC562
	for <lists+devicetree@lfdr.de>; Mon, 11 Apr 2022 22:02:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349766AbiDKUEr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Apr 2022 16:04:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59864 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240425AbiDKUEp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Apr 2022 16:04:45 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.10])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D08321A074
        for <devicetree@vger.kernel.org>; Mon, 11 Apr 2022 13:02:29 -0700 (PDT)
Received: from localhost.localdomain ([37.4.249.94]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MBDrM-1noU552Mn8-00Cgto; Mon, 11 Apr 2022 22:02:05 +0200
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
        Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH 5/6] ARM: dts: bcm283x: Remove gpio line name NC
Date:   Mon, 11 Apr 2022 22:01:42 +0200
Message-Id: <20220411200143.4876-6-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220411200143.4876-1-stefan.wahren@i2se.com>
References: <20220411200143.4876-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:6fTX83AbFoIJaJ+LkpYblK7X0yUyfuW5zOzErZfEv7aejwJaNjI
 q8MCwWXZOMVpk+D1iNgRTRdUATcjr+46ay0a74Z1iH8wKY51MKPV4P6BMlPRifRjli/qny8
 lgPU+9IgSoLgdeUTPzfTWy8VpPEWSfLX4DygmQkbFdHWDoc798zerAD2BQzfkghFJ00PtN1
 K6ym9fCwoWCsNSY/W95TQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:YVfn1ZjQws8=:I6kkBeTg9/tLNcbn5d7P61
 OvXCw9rzjSIDmHwRL5wZpscf2Oe0Eojp4pFpvfrZqAQdUVkai/gMW/raRCYBB08D0wYvocuLo
 6Vspw9Lc6zLCna7j7quoqlS/KYsky2SLXsabqvm0Vg3/bStlAD/SPUVZGkXVwIgstIT7r14rC
 P3r4DhTmLjQk+EIwSxoExKc/nA8tmQ3atlmo03JgWFpLvU/3WTRE8VWmHciJDuHUmIwvcbGlq
 anvg2yk3i7Ms9GshGgU7+BoltgNn+ALhfhFfc7+AOgqNCHg3rcZ+/E1MK2DvWjHg7DrFIr2jO
 rJJ8k0l0YfE9qmtrFjDUXacN1MviQE4pwriOnp4RfV71ueRgON+t5IzTRg1HlLXrNE6qZ/5EA
 M4KZqhWqRCNyd4VFj2UYLWeARgvIKur+HRhQQlIkSbWCNXsI0hXUdVnYDWfRw+/fRKdqTpDVy
 YTVrVThCENHUppE2e3M9hUblwt1xyhL5u1s4mg1tenZkcC9u23zFb9d7VAM5a14f4+wEEAUdI
 ef0oXdDRE+toMB3pCqqo6zjxkiGZkGD+2iGQzo6kEYOcamIjnHmlDGuuSlQljRYQInPtEOpJ3
 yC//EZ2P9Nl4H/FJ6KGmYsJIkSZk+6eJcFqx0+Q1TzGZt6gCTtzRHbcx5FGBqk90N9IuNLg6u
 4eqCfPieDHIt1duddZVHD3S4iaN+9LvGEroiBdr0bI6RLhXe/bV6ShafXi+Rt/i7Wr0zCQvFU
 wDiwsuq9G6bcuhhZ
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The convention to name not connected GPIOs with NC has never been
adapted. Also newer Raspberry Pi boards like RPi 4 never did. So fix
this inconsistency by removing all of the NC names.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 arch/arm/boot/dts/bcm2835-rpi-a-plus.dts   | 21 +++++++------
 arch/arm/boot/dts/bcm2835-rpi-a.dts        | 35 +++++++++++-----------
 arch/arm/boot/dts/bcm2835-rpi-b-plus.dts   | 17 +++++------
 arch/arm/boot/dts/bcm2835-rpi-b-rev2.dts   | 35 +++++++++++-----------
 arch/arm/boot/dts/bcm2835-rpi-b.dts        | 35 +++++++++++-----------
 arch/arm/boot/dts/bcm2835-rpi-cm1-io1.dts  |  1 -
 arch/arm/boot/dts/bcm2835-rpi-zero-w.dts   |  3 +-
 arch/arm/boot/dts/bcm2835-rpi-zero.dts     | 29 +++++++++---------
 arch/arm/boot/dts/bcm2836-rpi-2-b.dts      |  1 -
 arch/arm/boot/dts/bcm2837-rpi-3-a-plus.dts |  1 -
 arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts |  1 -
 arch/arm/boot/dts/bcm2837-rpi-3-b.dts      |  1 -
 arch/arm/boot/dts/bcm2837-rpi-cm3-io3.dts  |  1 -
 arch/arm/boot/dts/bcm2837-rpi-cm3.dtsi     | 12 ++++----
 14 files changed, 90 insertions(+), 103 deletions(-)

diff --git a/arch/arm/boot/dts/bcm2835-rpi-a-plus.dts b/arch/arm/boot/dts/bcm2835-rpi-a-plus.dts
index 40b9405f1a8e..9b9a18bbb20a 100644
--- a/arch/arm/boot/dts/bcm2835-rpi-a-plus.dts
+++ b/arch/arm/boot/dts/bcm2835-rpi-a-plus.dts
@@ -32,7 +32,6 @@ &gpio {
 	 * This is based on the unreleased schematic for the Model A+.
 	 *
 	 * Legend:
-	 * "NC" = not connected (no rail from the SoC)
 	 * "FOO" = GPIO line named "FOO" on the schematic
 	 * "FOO_N" = GPIO line named "FOO" on schematic, active low
 	 */
@@ -67,21 +66,21 @@ &gpio {
 			  "GPIO27",
 			  "SDA0",
 			  "SCL0",
-			  "NC", /* GPIO30 */
-			  "NC", /* GPIO31 */
+			  "", /* GPIO30 */
+			  "", /* GPIO31 */
 			  "CAM_GPIO1", /* GPIO32 */
-			  "NC", /* GPIO33 */
-			  "NC", /* GPIO34 */
+			  "", /* GPIO33 */
+			  "", /* GPIO34 */
 			  "PWR_LOW_N", /* GPIO35 */
-			  "NC", /* GPIO36 */
-			  "NC", /* GPIO37 */
+			  "", /* GPIO36 */
+			  "", /* GPIO37 */
 			  "USB_LIMIT", /* GPIO38 */
-			  "NC", /* GPIO39 */
+			  "", /* GPIO39 */
 			  "PWM0_OUT", /* GPIO40 */
 			  "CAM_GPIO0", /* GPIO41 */
-			  "NC", /* GPIO42 */
-			  "NC", /* GPIO43 */
-			  "NC", /* GPIO44 */
+			  "", /* GPIO42 */
+			  "", /* GPIO43 */
+			  "", /* GPIO44 */
 			  "PWM1_OUT", /* GPIO45 */
 			  "HDMI_HPD_N",
 			  "STATUS_LED",
diff --git a/arch/arm/boot/dts/bcm2835-rpi-a.dts b/arch/arm/boot/dts/bcm2835-rpi-a.dts
index 11edb581dbaf..f664e4fced93 100644
--- a/arch/arm/boot/dts/bcm2835-rpi-a.dts
+++ b/arch/arm/boot/dts/bcm2835-rpi-a.dts
@@ -26,7 +26,6 @@ &gpio {
 	 * RPI00021 sheet 02
 	 *
 	 * Legend:
-	 * "NC" = not connected (no rail from the SoC)
 	 * "FOO" = GPIO line named "FOO" on the schematic
 	 * "FOO_N" = GPIO line named "FOO" on schematic, active low
 	 */
@@ -42,41 +41,41 @@ &gpio {
 			  "SPI_MISO",
 			  "SPI_MOSI",
 			  "SPI_SCLK",
-			  "NC", /* GPIO12 */
-			  "NC", /* GPIO13 */
+			  "", /* GPIO12 */
+			  "", /* GPIO13 */
 			  /* Serial port */
 			  "TXD0",
 			  "RXD0",
 			  "STATUS_LED_N",
 			  "GPIO17",
 			  "GPIO18",
-			  "NC", /* GPIO19 */
-			  "NC", /* GPIO20 */
+			  "", /* GPIO19 */
+			  "", /* GPIO20 */
 			  "GPIO21",
 			  "GPIO22",
 			  "GPIO23",
 			  "GPIO24",
 			  "GPIO25",
-			  "NC", /* GPIO26 */
+			  "", /* GPIO26 */
 			  "CAM_GPIO0",
 			  /* Binary number representing build/revision */
 			  "CONFIG0",
 			  "CONFIG1",
 			  "CONFIG2",
 			  "CONFIG3",
-			  "NC", /* GPIO32 */
-			  "NC", /* GPIO33 */
-			  "NC", /* GPIO34 */
-			  "NC", /* GPIO35 */
-			  "NC", /* GPIO36 */
-			  "NC", /* GPIO37 */
-			  "NC", /* GPIO38 */
-			  "NC", /* GPIO39 */
+			  "", /* GPIO32 */
+			  "", /* GPIO33 */
+			  "", /* GPIO34 */
+			  "", /* GPIO35 */
+			  "", /* GPIO36 */
+			  "", /* GPIO37 */
+			  "", /* GPIO38 */
+			  "", /* GPIO39 */
 			  "PWM0_OUT",
-			  "NC", /* GPIO41 */
-			  "NC", /* GPIO42 */
-			  "NC", /* GPIO43 */
-			  "NC", /* GPIO44 */
+			  "", /* GPIO41 */
+			  "", /* GPIO42 */
+			  "", /* GPIO43 */
+			  "", /* GPIO44 */
 			  "PWM1_OUT",
 			  "HDMI_HPD_P",
 			  "SD_CARD_DET",
diff --git a/arch/arm/boot/dts/bcm2835-rpi-b-plus.dts b/arch/arm/boot/dts/bcm2835-rpi-b-plus.dts
index 1b435c64bd9c..7b7c363e5ee8 100644
--- a/arch/arm/boot/dts/bcm2835-rpi-b-plus.dts
+++ b/arch/arm/boot/dts/bcm2835-rpi-b-plus.dts
@@ -34,7 +34,6 @@ &gpio {
 	 * RPI-BPLUS sheet 1
 	 *
 	 * Legend:
-	 * "NC" = not connected (no rail from the SoC)
 	 * "FOO" = GPIO line named "FOO" on the schematic
 	 * "FOO_N" = GPIO line named "FOO" on schematic, active low
 	 */
@@ -69,20 +68,20 @@ &gpio {
 			  "GPIO27",
 			  "SDA0",
 			  "SCL0",
-			  "NC", /* GPIO30 */
+			  "", /* GPIO30 */
 			  "LAN_RUN", /* GPIO31 */
 			  "CAM_GPIO1", /* GPIO32 */
-			  "NC", /* GPIO33 */
-			  "NC", /* GPIO34 */
+			  "", /* GPIO33 */
+			  "", /* GPIO34 */
 			  "PWR_LOW_N", /* GPIO35 */
-			  "NC", /* GPIO36 */
-			  "NC", /* GPIO37 */
+			  "", /* GPIO36 */
+			  "", /* GPIO37 */
 			  "USB_LIMIT", /* GPIO38 */
-			  "NC", /* GPIO39 */
+			  "", /* GPIO39 */
 			  "PWM0_OUT", /* GPIO40 */
 			  "CAM_GPIO0", /* GPIO41 */
-			  "NC", /* GPIO42 */
-			  "NC", /* GPIO43 */
+			  "", /* GPIO42 */
+			  "", /* GPIO43 */
 			  "ETHCLK", /* GPIO44 */
 			  "PWM1_OUT", /* GPIO45 */
 			  "HDMI_HPD_N",
diff --git a/arch/arm/boot/dts/bcm2835-rpi-b-rev2.dts b/arch/arm/boot/dts/bcm2835-rpi-b-rev2.dts
index a23c25c00eea..f5b66d3f4ff3 100644
--- a/arch/arm/boot/dts/bcm2835-rpi-b-rev2.dts
+++ b/arch/arm/boot/dts/bcm2835-rpi-b-rev2.dts
@@ -27,7 +27,6 @@ &gpio {
 	 * RPI00022 sheet 02
 	 *
 	 * Legend:
-	 * "NC" = not connected (no rail from the SoC)
 	 * "FOO" = GPIO line named "FOO" on the schematic
 	 * "FOO_N" = GPIO line named "FOO" on schematic, active low
 	 */
@@ -43,40 +42,40 @@ &gpio {
 			  "SPI_MISO",
 			  "SPI_MOSI",
 			  "SPI_SCLK",
-			  "NC", /* GPIO12 */
-			  "NC", /* GPIO13 */
+			  "", /* GPIO12 */
+			  "", /* GPIO13 */
 			  /* Serial port */
 			  "TXD0",
 			  "RXD0",
 			  "STATUS_LED_N",
 			  "GPIO17",
 			  "GPIO18",
-			  "NC", /* GPIO19 */
-			  "NC", /* GPIO20 */
+			  "", /* GPIO19 */
+			  "", /* GPIO20 */
 			  "CAM_GPIO",
 			  "GPIO22",
 			  "GPIO23",
 			  "GPIO24",
 			  "GPIO25",
-			  "NC", /* GPIO26 */
+			  "", /* GPIO26 */
 			  "GPIO27",
 			  "GPIO28",
 			  "GPIO29",
 			  "GPIO30",
 			  "GPIO31",
-			  "NC", /* GPIO32 */
-			  "NC", /* GPIO33 */
-			  "NC", /* GPIO34 */
-			  "NC", /* GPIO35 */
-			  "NC", /* GPIO36 */
-			  "NC", /* GPIO37 */
-			  "NC", /* GPIO38 */
-			  "NC", /* GPIO39 */
+			  "", /* GPIO32 */
+			  "", /* GPIO33 */
+			  "", /* GPIO34 */
+			  "", /* GPIO35 */
+			  "", /* GPIO36 */
+			  "", /* GPIO37 */
+			  "", /* GPIO38 */
+			  "", /* GPIO39 */
 			  "PWM0_OUT",
-			  "NC", /* GPIO41 */
-			  "NC", /* GPIO42 */
-			  "NC", /* GPIO43 */
-			  "NC", /* GPIO44 */
+			  "", /* GPIO41 */
+			  "", /* GPIO42 */
+			  "", /* GPIO43 */
+			  "", /* GPIO44 */
 			  "PWM1_OUT",
 			  "HDMI_HPD_P",
 			  "SD_CARD_DET",
diff --git a/arch/arm/boot/dts/bcm2835-rpi-b.dts b/arch/arm/boot/dts/bcm2835-rpi-b.dts
index 25d87212cefd..f589bede2b11 100644
--- a/arch/arm/boot/dts/bcm2835-rpi-b.dts
+++ b/arch/arm/boot/dts/bcm2835-rpi-b.dts
@@ -27,7 +27,6 @@ &gpio {
 	 * RPI00021 sheet 02
 	 *
 	 * Legend:
-	 * "NC" = not connected (no rail from the SoC)
 	 * "FOO" = GPIO line named "FOO" on the schematic
 	 * "FOO_N" = GPIO line named "FOO" on schematic, active low
 	 */
@@ -43,40 +42,40 @@ &gpio {
 			  "SPI_MISO",
 			  "SPI_MOSI",
 			  "SPI_SCLK",
-			  "NC", /* GPIO12 */
-			  "NC", /* GPIO13 */
+			  "", /* GPIO12 */
+			  "", /* GPIO13 */
 			  /* Serial port */
 			  "TXD0",
 			  "RXD0",
 			  "STATUS_LED_N",
 			  "GPIO17",
 			  "GPIO18",
-			  "NC", /* GPIO19 */
-			  "NC", /* GPIO20 */
+			  "", /* GPIO19 */
+			  "", /* GPIO20 */
 			  "CAM_GPIO0",
 			  "GPIO22",
 			  "GPIO23",
 			  "GPIO24",
 			  "GPIO25",
-			  "NC", /* GPIO26 */
+			  "", /* GPIO26 */
 			  "GPIO27",
 			  "GPIO28",
 			  "GPIO29",
 			  "GPIO30",
 			  "GPIO31",
-			  "NC", /* GPIO32 */
-			  "NC", /* GPIO33 */
-			  "NC", /* GPIO34 */
-			  "NC", /* GPIO35 */
-			  "NC", /* GPIO36 */
-			  "NC", /* GPIO37 */
-			  "NC", /* GPIO38 */
-			  "NC", /* GPIO39 */
+			  "", /* GPIO32 */
+			  "", /* GPIO33 */
+			  "", /* GPIO34 */
+			  "", /* GPIO35 */
+			  "", /* GPIO36 */
+			  "", /* GPIO37 */
+			  "", /* GPIO38 */
+			  "", /* GPIO39 */
 			  "PWM0_OUT",
-			  "NC", /* GPIO41 */
-			  "NC", /* GPIO42 */
-			  "NC", /* GPIO43 */
-			  "NC", /* GPIO44 */
+			  "", /* GPIO41 */
+			  "", /* GPIO42 */
+			  "", /* GPIO43 */
+			  "", /* GPIO44 */
 			  "PWM1_OUT",
 			  "HDMI_HPD_P",
 			  "SD_CARD_DET",
diff --git a/arch/arm/boot/dts/bcm2835-rpi-cm1-io1.dts b/arch/arm/boot/dts/bcm2835-rpi-cm1-io1.dts
index a75c882e6575..87958a96c3e0 100644
--- a/arch/arm/boot/dts/bcm2835-rpi-cm1-io1.dts
+++ b/arch/arm/boot/dts/bcm2835-rpi-cm1-io1.dts
@@ -13,7 +13,6 @@ &gpio {
 	 * This is based on the official GPU firmware DT blob.
 	 *
 	 * Legend:
-	 * "NC" = not connected (no rail from the SoC)
 	 * "FOO" = GPIO line named "FOO" on the schematic
 	 * "FOO_N" = GPIO line named "FOO" on schematic, active low
 	 */
diff --git a/arch/arm/boot/dts/bcm2835-rpi-zero-w.dts b/arch/arm/boot/dts/bcm2835-rpi-zero-w.dts
index 8b043ab62dc8..596bb1ef994e 100644
--- a/arch/arm/boot/dts/bcm2835-rpi-zero-w.dts
+++ b/arch/arm/boot/dts/bcm2835-rpi-zero-w.dts
@@ -39,7 +39,6 @@ &gpio {
 	 * This is based on the official GPU firmware DT blob.
 	 *
 	 * Legend:
-	 * "NC" = not connected (no rail from the SoC)
 	 * "FOO" = GPIO line named "FOO" on the schematic
 	 * "FOO_N" = GPIO line named "FOO" on schematic, active low
 	 */
@@ -88,7 +87,7 @@ &gpio {
 			  "SD1_DATA3",
 			  "CAM_GPIO1", /* GPIO40 */
 			  "WL_ON", /* GPIO41 */
-			  "NC", /* GPIO42 */
+			  "", /* GPIO42 */
 			  "WIFI_CLK", /* GPIO43 */
 			  "CAM_GPIO0", /* GPIO44 */
 			  "BT_ON", /* GPIO45 */
diff --git a/arch/arm/boot/dts/bcm2835-rpi-zero.dts b/arch/arm/boot/dts/bcm2835-rpi-zero.dts
index 6f9b3a908f28..a65c2bca69ea 100644
--- a/arch/arm/boot/dts/bcm2835-rpi-zero.dts
+++ b/arch/arm/boot/dts/bcm2835-rpi-zero.dts
@@ -29,7 +29,6 @@ &gpio {
 	 * This is based on the official GPU firmware DT blob.
 	 *
 	 * Legend:
-	 * "NC" = not connected (no rail from the SoC)
 	 * "FOO" = GPIO line named "FOO" on the schematic
 	 * "FOO_N" = GPIO line named "FOO" on schematic, active low
 	 */
@@ -64,22 +63,22 @@ &gpio {
 			  "GPIO27",
 			  "SDA0",
 			  "SCL0",
-			  "NC", /* GPIO30 */
-			  "NC", /* GPIO31 */
+			  "", /* GPIO30 */
+			  "", /* GPIO31 */
 			  "CAM_GPIO1", /* GPIO32 */
-			  "NC", /* GPIO33 */
-			  "NC", /* GPIO34 */
-			  "NC", /* GPIO35 */
-			  "NC", /* GPIO36 */
-			  "NC", /* GPIO37 */
-			  "NC", /* GPIO38 */
-			  "NC", /* GPIO39 */
-			  "NC", /* GPIO40 */
+			  "", /* GPIO33 */
+			  "", /* GPIO34 */
+			  "", /* GPIO35 */
+			  "", /* GPIO36 */
+			  "", /* GPIO37 */
+			  "", /* GPIO38 */
+			  "", /* GPIO39 */
+			  "", /* GPIO40 */
 			  "CAM_GPIO0", /* GPIO41 */
-			  "NC", /* GPIO42 */
-			  "NC", /* GPIO43 */
-			  "NC", /* GPIO44 */
-			  "NC", /* GPIO45 */
+			  "", /* GPIO42 */
+			  "", /* GPIO43 */
+			  "", /* GPIO44 */
+			  "", /* GPIO45 */
 			  "HDMI_HPD_N",
 			  "STATUS_LED_N",
 			  /* Used by SD Card */
diff --git a/arch/arm/boot/dts/bcm2836-rpi-2-b.dts b/arch/arm/boot/dts/bcm2836-rpi-2-b.dts
index d8af8eeac7b6..c824a2cea02e 100644
--- a/arch/arm/boot/dts/bcm2836-rpi-2-b.dts
+++ b/arch/arm/boot/dts/bcm2836-rpi-2-b.dts
@@ -34,7 +34,6 @@ &gpio {
 	 * the official GPU firmware DT blob.
 	 *
 	 * Legend:
-	 * "NC" = not connected (no rail from the SoC)
 	 * "FOO" = GPIO line named "FOO" on the schematic
 	 * "FOO_N" = GPIO line named "FOO" on schematic, active low
 	 */
diff --git a/arch/arm/boot/dts/bcm2837-rpi-3-a-plus.dts b/arch/arm/boot/dts/bcm2837-rpi-3-a-plus.dts
index d73daf5bff1d..f7222a28903e 100644
--- a/arch/arm/boot/dts/bcm2837-rpi-3-a-plus.dts
+++ b/arch/arm/boot/dts/bcm2837-rpi-3-a-plus.dts
@@ -55,7 +55,6 @@ &gpio {
 	 * This is mostly based on the official GPU firmware DT blob.
 	 *
 	 * Legend:
-	 * "NC" = not connected (no rail from the SoC)
 	 * "FOO" = GPIO line named "FOO" on the schematic
 	 * "FOO_N" = GPIO line named "FOO" on schematic, active low
 	 */
diff --git a/arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts b/arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts
index c263f5b48b96..fd4ac6f2d077 100644
--- a/arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts
+++ b/arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts
@@ -61,7 +61,6 @@ &gpio {
 	 * the official GPU firmware DT blob.
 	 *
 	 * Legend:
-	 * "NC" = not connected (no rail from the SoC)
 	 * "FOO" = GPIO line named "FOO" on the schematic
 	 * "FOO_N" = GPIO line named "FOO" on schematic, active low
 	 */
diff --git a/arch/arm/boot/dts/bcm2837-rpi-3-b.dts b/arch/arm/boot/dts/bcm2837-rpi-3-b.dts
index 42b5383b55d8..00ea439d601d 100644
--- a/arch/arm/boot/dts/bcm2837-rpi-3-b.dts
+++ b/arch/arm/boot/dts/bcm2837-rpi-3-b.dts
@@ -54,7 +54,6 @@ &gpio {
 	 * the official GPU firmware DT blob.
 	 *
 	 * Legend:
-	 * "NC" = not connected (no rail from the SoC)
 	 * "FOO" = GPIO line named "FOO" on the schematic
 	 * "FOO_N" = GPIO line named "FOO" on schematic, active low
 	 */
diff --git a/arch/arm/boot/dts/bcm2837-rpi-cm3-io3.dts b/arch/arm/boot/dts/bcm2837-rpi-cm3-io3.dts
index 3dfce4312dfc..cf84e69fced8 100644
--- a/arch/arm/boot/dts/bcm2837-rpi-cm3-io3.dts
+++ b/arch/arm/boot/dts/bcm2837-rpi-cm3-io3.dts
@@ -13,7 +13,6 @@ &gpio {
 	 * This is based on the official GPU firmware DT blob.
 	 *
 	 * Legend:
-	 * "NC" = not connected (no rail from the SoC)
 	 * "FOO" = GPIO line named "FOO" on the schematic
 	 * "FOO_N" = GPIO line named "FOO" on schematic, active low
 	 */
diff --git a/arch/arm/boot/dts/bcm2837-rpi-cm3.dtsi b/arch/arm/boot/dts/bcm2837-rpi-cm3.dtsi
index 828a20561b96..f57b4ca145dd 100644
--- a/arch/arm/boot/dts/bcm2837-rpi-cm3.dtsi
+++ b/arch/arm/boot/dts/bcm2837-rpi-cm3.dtsi
@@ -41,12 +41,12 @@ expgpio: gpio {
 		#gpio-cells = <2>;
 		gpio-line-names = "HDMI_HPD_N",
 				  "EMMC_EN_N",
-				  "NC",
-				  "NC",
-				  "NC",
-				  "NC",
-				  "NC",
-				  "NC";
+				  "",
+				  "",
+				  "",
+				  "",
+				  "",
+				  "";
 		status = "okay";
 	};
 };
-- 
2.25.1

