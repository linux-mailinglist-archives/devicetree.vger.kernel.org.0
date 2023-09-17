Return-Path: <devicetree+bounces-876-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F250F7A368B
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 18:30:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0FD731C21634
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 16:30:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A0524A29;
	Sun, 17 Sep 2023 16:30:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4749D53B9
	for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 16:30:13 +0000 (UTC)
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::229])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10DE4131;
	Sun, 17 Sep 2023 09:30:10 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id A6BEAFF809;
	Sun, 17 Sep 2023 16:29:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arinc9.com; s=gm1;
	t=1694968209;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=HzNM+NPfJ5CDr5hTobSDl1+YnN2TJtED/tkotJW0Ydg=;
	b=NtbKG7FFhvBrf/tNHIlYz/nCRJmUGzH/VPSVuqbS+jQwh0NTv5diQfbNoVS9Za4paxzpMl
	bNV4el4FuS4ai6rl+bvdyy3MQYBgds/MSOxulYa4Ni7e2v/49dJSFbBkKJlRnfaTPwumPv
	gRYdnSz4vCwpsrQIO7SI4wRdrZCqu82tKFuehH4OoVu9SlN03H9KkclXd0wkqCg9laZlPD
	T8BJXhgNynFSTXGGwDwSQ3dC3JO/mvloFEQkQqu87amjLs7+PPy9q+UzqjnRnb4tbDjU49
	D/jmc/gm+BmuPObu5rvDMuhbN/3/DjSqYCjjsqH+JExxCY6bWqtneJ9dsnwS/Q==
From: =?UTF-8?q?Ar=C4=B1n=C3=A7=20=C3=9CNAL?= <arinc.unal@arinc9.com>
To: =?UTF-8?q?Ar=C4=B1n=C3=A7=20=C3=9CNAL?= <arinc.unal@arinc9.com>,
	Sergio Paracuellos <sergio.paracuellos@gmail.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: mithat.guner@xeront.com,
	erkin.bozoglu@xeront.com,
	linux-mediatek@lists.infradead.org,
	linux-mips@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] dt-bindings: pinctrl: mtmips: document pins of groups
Date: Sun, 17 Sep 2023 19:28:37 +0300
Message-Id: <20230917162837.277405-2-arinc.unal@arinc9.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230917162837.277405-1-arinc.unal@arinc9.com>
References: <20230917162837.277405-1-arinc.unal@arinc9.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-GND-Sasl: arinc.unal@arinc9.com
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Document the pins of each group on the MediaTek MTMIPS SoC pin controllers.

Signed-off-by: Arınç ÜNAL <arinc.unal@arinc9.com>
---
 .../pinctrl/mediatek,mt7620-pinctrl.yaml      | 22 ++++++++++++-
 .../pinctrl/mediatek,mt7621-pinctrl.yaml      | 18 +++++++++-
 .../pinctrl/mediatek,mt76x8-pinctrl.yaml      | 33 ++++++++++++++++++-
 .../pinctrl/ralink,rt2880-pinctrl.yaml        | 17 +++++++++-
 .../pinctrl/ralink,rt305x-pinctrl.yaml        | 16 ++++++++-
 .../pinctrl/ralink,rt3352-pinctrl.yaml        | 17 +++++++++-
 .../pinctrl/ralink,rt3883-pinctrl.yaml        | 16 ++++++++-
 .../pinctrl/ralink,rt5350-pinctrl.yaml        | 13 +++++++-
 8 files changed, 144 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/mediatek,mt7620-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/mediatek,mt7620-pinctrl.yaml
index 221adcef6e14..eb9d9d2bd90f 100644
--- a/Documentation/devicetree/bindings/pinctrl/mediatek,mt7620-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/mediatek,mt7620-pinctrl.yaml
@@ -44,8 +44,28 @@ patternProperties:
                    wdt refclk, wdt rst, wled]
 
           groups:
-            description:
+            description: |
               An array of strings. Each string contains the name of a group.
+
+              group             pins
+              ------------------------------------------------------------------
+              "i2c"             1, 2
+              "spi"             3, 4, 5, 6
+              "uartf"           7, 8, 9, 10, 11, 12, 13, 14
+              "uartlite"        15, 16
+              "wdt"             17
+              "pa"              18, 19, 20, 21
+              "mdio"            22, 23
+              "rgmii1"          24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35
+              "pcie"            36
+              "spi refclk"      37, 38, 39
+              "ephy"            40, 41, 42, 43, 44
+              "nd_sd"           45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56,
+                                57, 58, 59
+
+              "rgmii2"          60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71
+              "wled"            72
+
             maxItems: 1
 
         required:
diff --git a/Documentation/devicetree/bindings/pinctrl/mediatek,mt7621-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/mediatek,mt7621-pinctrl.yaml
index 5e29332c794b..71d1ef203d38 100644
--- a/Documentation/devicetree/bindings/pinctrl/mediatek,mt7621-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/mediatek,mt7621-pinctrl.yaml
@@ -43,8 +43,24 @@ patternProperties:
                    uart1, uart2, uart3, wdt refclk, wdt rst]
 
           groups:
-            description:
+            description: |
               An array of strings. Each string contains the name of a group.
+
+              group             pins
+              ------------------------------------------------------------------
+              "uart1"           1, 2
+              "i2c"             3, 4
+              "uart3"           5, 6, 7, 8
+              "uart2"           9, 10, 11, 12
+              "jtag"            13, 14, 15, 16, 17
+              "wdt"             18
+              "pcie"            19
+              "mdio"            20, 21
+              "rgmii2"          22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33
+              "spi"             34, 35, 36, 37, 38, 39, 40
+              "sdhci"           41, 42, 43, 44, 45, 46, 47, 48
+              "rgmii1"          49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60
+
             maxItems: 1
 
         required:
diff --git a/Documentation/devicetree/bindings/pinctrl/mediatek,mt76x8-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/mediatek,mt76x8-pinctrl.yaml
index fef7728a5220..3831c04fa37c 100644
--- a/Documentation/devicetree/bindings/pinctrl/mediatek,mt76x8-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/mediatek,mt76x8-pinctrl.yaml
@@ -46,8 +46,39 @@ patternProperties:
                    wled_an, wled_kn, -]
 
           groups:
-            description:
+            description: |
               An array of strings. Each string contains the name of a group.
+
+              group             pins
+              ------------------------------------------------------------------
+              "i2s"             0, 1, 2, 3
+              "i2c"             4, 5
+              "spi cs1"         6
+              "spi"             7, 8, 9, 10
+              "gpio"            11
+              "uart0"           12, 13
+              "spis"            14, 15, 16, 17
+              "pwm0"            18
+              "pwm1"            19
+              "uart2"           20, 21
+              "sdmode"          22, 23, 24, 25, 26, 27, 28, 29
+              "p4led_kn"        30
+              "p3led_kn"        31
+              "p2led_kn"        32
+              "p1led_kn"        33
+              "p0led_kn"        34
+              "wled_kn"         35
+              "perst"           36
+              "refclk"          37
+              "wdt"             38
+              "p4led_an"        39
+              "p3led_an"        40
+              "p2led_an"        41
+              "p1led_an"        42
+              "p0led_an"        43
+              "wled_an"         44
+              "uart1"           45, 46
+
             maxItems: 1
 
         required:
diff --git a/Documentation/devicetree/bindings/pinctrl/ralink,rt2880-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/ralink,rt2880-pinctrl.yaml
index 71bc961b856e..b1a6a6236737 100644
--- a/Documentation/devicetree/bindings/pinctrl/ralink,rt2880-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/ralink,rt2880-pinctrl.yaml
@@ -41,8 +41,23 @@ patternProperties:
             enum: [gpio, i2c, spi, uartlite, jtag, mdio, sdram, pci]
 
           groups:
-            description:
+            description: |
               An array of strings. Each string contains the name of a group.
+
+              group             pins
+              ------------------------------------------------------------------
+              "i2c"             1, 2
+              "spi"             3, 4, 5, 6
+              "uartlite"        7, 8, 9, 10, 11, 12, 13, 14
+              "jtag"            17, 18, 19, 20, 21
+              "mdio"            22, 23
+              "sdram"           24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35,
+                                36, 37, 38, 39
+
+              "pci"             40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51,
+                                52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63,
+                                64, 65, 66, 67, 68, 69, 70, 71
+
             maxItems: 1
 
         required:
diff --git a/Documentation/devicetree/bindings/pinctrl/ralink,rt305x-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/ralink,rt305x-pinctrl.yaml
index bde19a00af80..214fb17d6b82 100644
--- a/Documentation/devicetree/bindings/pinctrl/ralink,rt305x-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/ralink,rt305x-pinctrl.yaml
@@ -43,8 +43,22 @@ patternProperties:
                    uartlite]
 
           groups:
-            description:
+            description: |
               An array of strings. Each string contains the name of a group.
+
+              group             pins
+              ------------------------------------------------------------------
+              "i2c"             1, 2
+              "spi"             3, 4, 5, 6
+              "uartf"           7, 8, 9, 10, 11, 12, 13, 14
+              "uartlite"        15, 16
+              "jtag"            17, 18, 19, 20, 21
+              "mdio"            22, 23
+              "sdram"           24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35,
+                                36, 37, 38, 39
+
+              "rgmii"           40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51
+
             maxItems: 1
 
         required:
diff --git a/Documentation/devicetree/bindings/pinctrl/ralink,rt3352-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/ralink,rt3352-pinctrl.yaml
index f87038cadfc8..65f04d85e9fc 100644
--- a/Documentation/devicetree/bindings/pinctrl/ralink,rt3352-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/ralink,rt3352-pinctrl.yaml
@@ -43,8 +43,23 @@ patternProperties:
                    uartf, uartlite, wdg_cs1]
 
           groups:
-            description:
+            description: |
               An array of strings. Each string contains the name of a group.
+
+              group             pins
+              ------------------------------------------------------------------
+              "i2c"             1, 2
+              "spi"             3, 4, 5, 6
+              "uartf"           7, 8, 9, 10, 11, 12, 13, 14
+              "uartlite"        15, 16
+              "jtag"            17, 18, 19, 20, 21
+              "mdio"            22, 23
+              "rgmii"           24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35
+              "lna"             36, 37
+              "pa"              38, 39
+              "led"             40, 41, 42, 43, 44
+              "spi_cs1"         45
+
             maxItems: 1
 
         required:
diff --git a/Documentation/devicetree/bindings/pinctrl/ralink,rt3883-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/ralink,rt3883-pinctrl.yaml
index 3a13a69f7752..61beb78b9d1c 100644
--- a/Documentation/devicetree/bindings/pinctrl/ralink,rt3883-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/ralink,rt3883-pinctrl.yaml
@@ -43,8 +43,22 @@ patternProperties:
                    pcm gpio, pcm i2s, pcm uartf, spi, uartf, uartlite]
 
           groups:
-            description:
+            description: |
               An array of strings. Each string contains the name of a group.
+
+              group             pins
+              ------------------------------------------------------------------
+              "i2c"             1, 2
+              "spi"             3, 4, 5, 6
+              "uartf"           7, 8, 9, 10, 11, 12, 13, 14
+              "uartlite"        15, 16
+              "jtag"            17, 18, 19, 20, 21
+              "mdio"            22, 23
+              "lna a"           32, 33, 34
+              "lna g"           35, 36, 37
+              "ge1"             72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83
+              "ge2"             84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95
+
             maxItems: 1
 
         required:
diff --git a/Documentation/devicetree/bindings/pinctrl/ralink,rt5350-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/ralink,rt5350-pinctrl.yaml
index 1231f442afbc..49025783247e 100644
--- a/Documentation/devicetree/bindings/pinctrl/ralink,rt5350-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/ralink,rt5350-pinctrl.yaml
@@ -43,8 +43,19 @@ patternProperties:
                    wdg_cs1]
 
           groups:
-            description:
+            description: |
               An array of strings. Each string contains the name of a group.
+
+              group             pins
+              ------------------------------------------------------------------
+              "i2c"             1, 2
+              "spi"             3, 4, 5, 6
+              "uartf"           7, 8, 9, 10, 11, 12, 13, 14
+              "uartlite"        15, 16
+              "jtag"            17, 18, 19, 20, 21
+              "led"             22, 23, 24, 25, 26
+              "spi_cs1"         27
+
             maxItems: 1
 
         required:
-- 
2.39.2


