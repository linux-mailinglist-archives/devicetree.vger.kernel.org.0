Return-Path: <devicetree+bounces-875-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 478117A368A
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 18:29:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 53FCA1C2158F
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 16:29:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D4645383;
	Sun, 17 Sep 2023 16:29:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B698636
	for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 16:29:39 +0000 (UTC)
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [217.70.183.199])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A6B891;
	Sun, 17 Sep 2023 09:29:36 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id D80A2FF805;
	Sun, 17 Sep 2023 16:28:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arinc9.com; s=gm1;
	t=1694968174;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=34Ndrewp5sbJMJ2jOunLl5qw82bqk9h/3cG8G8ygPsc=;
	b=aISGUYh72XAMzn5uT1GbJpZ68jajpUa/1xb1LmMeXvwMILRv3eTZEFnqi4FSgOIqqXh+jG
	FRKQhYMGF2n75GjvnFLisdZnUT1xcqZ0S5ZIPB93Z9G+IxEZH6AuQUyce4EsXnDBnHWpoV
	cT0b6Wg/HYU5h+L5XeOL/TTtZxQwiltZXrqNNSV/XQFfdz+XsmUiTr5+XBVKYS7qrZ6gr+
	EkJLKgNOrbVQ13DpVzHvBtFcBn0lPfui80GCBmxinB5ufJEJGMzFnX+JQROFz/GY+yjwH6
	hiX1PpYoaceNfsprFN9FgXg8X2WFpacj6kPZbX6frJn6c3qemTJWaHAe8cCPuw==
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
Subject: [PATCH 1/2] dt-bindings: pinctrl: mtmips: add deprecated ralink,rt2880-pinmux
Date: Sun, 17 Sep 2023 19:28:36 +0300
Message-Id: <20230917162837.277405-1-arinc.unal@arinc9.com>
X-Mailer: git-send-email 2.39.2
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
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
	RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The "ralink,rt2880-pinmux" compatible string applies to all MediaTek MTMIPS
SoC pin controllers. Add it as a deprecated compatible string.

Signed-off-by: Arınç ÜNAL <arinc.unal@arinc9.com>
---
 .../devicetree/bindings/pinctrl/mediatek,mt7620-pinctrl.yaml | 5 ++++-
 .../devicetree/bindings/pinctrl/mediatek,mt7621-pinctrl.yaml | 5 ++++-
 .../devicetree/bindings/pinctrl/mediatek,mt76x8-pinctrl.yaml | 5 ++++-
 .../devicetree/bindings/pinctrl/ralink,rt2880-pinctrl.yaml   | 5 ++++-
 .../devicetree/bindings/pinctrl/ralink,rt305x-pinctrl.yaml   | 5 ++++-
 .../devicetree/bindings/pinctrl/ralink,rt3352-pinctrl.yaml   | 5 ++++-
 .../devicetree/bindings/pinctrl/ralink,rt3883-pinctrl.yaml   | 5 ++++-
 .../devicetree/bindings/pinctrl/ralink,rt5350-pinctrl.yaml   | 5 ++++-
 8 files changed, 32 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/mediatek,mt7620-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/mediatek,mt7620-pinctrl.yaml
index 591bc0664ec6..221adcef6e14 100644
--- a/Documentation/devicetree/bindings/pinctrl/mediatek,mt7620-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/mediatek,mt7620-pinctrl.yaml
@@ -17,7 +17,10 @@ description: |
 
 properties:
   compatible:
-    const: ralink,mt7620-pinctrl
+    oneOf:
+      - const: ralink,mt7620-pinctrl
+      - const: ralink,rt2880-pinmux
+        deprecated: true
 
 patternProperties:
   '-pins$':
diff --git a/Documentation/devicetree/bindings/pinctrl/mediatek,mt7621-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/mediatek,mt7621-pinctrl.yaml
index e568b9c13727..5e29332c794b 100644
--- a/Documentation/devicetree/bindings/pinctrl/mediatek,mt7621-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/mediatek,mt7621-pinctrl.yaml
@@ -17,7 +17,10 @@ description: |
 
 properties:
   compatible:
-    const: ralink,mt7621-pinctrl
+    oneOf:
+      - const: ralink,mt7621-pinctrl
+      - const: ralink,rt2880-pinmux
+        deprecated: true
 
 patternProperties:
   '-pins$':
diff --git a/Documentation/devicetree/bindings/pinctrl/mediatek,mt76x8-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/mediatek,mt76x8-pinctrl.yaml
index 31849dd5940b..fef7728a5220 100644
--- a/Documentation/devicetree/bindings/pinctrl/mediatek,mt76x8-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/mediatek,mt76x8-pinctrl.yaml
@@ -17,7 +17,10 @@ description: |
 
 properties:
   compatible:
-    const: ralink,mt76x8-pinctrl
+    oneOf:
+      - const: ralink,mt76x8-pinctrl
+      - const: ralink,rt2880-pinmux
+        deprecated: true
 
 patternProperties:
   '-pins$':
diff --git a/Documentation/devicetree/bindings/pinctrl/ralink,rt2880-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/ralink,rt2880-pinctrl.yaml
index 43b33dbf115b..71bc961b856e 100644
--- a/Documentation/devicetree/bindings/pinctrl/ralink,rt2880-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/ralink,rt2880-pinctrl.yaml
@@ -17,7 +17,10 @@ description: |
 
 properties:
   compatible:
-    const: ralink,rt2880-pinctrl
+    oneOf:
+      - const: ralink,rt2880-pinctrl
+      - const: ralink,rt2880-pinmux
+        deprecated: true
 
 patternProperties:
   '-pins$':
diff --git a/Documentation/devicetree/bindings/pinctrl/ralink,rt305x-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/ralink,rt305x-pinctrl.yaml
index 95a904273009..bde19a00af80 100644
--- a/Documentation/devicetree/bindings/pinctrl/ralink,rt305x-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/ralink,rt305x-pinctrl.yaml
@@ -17,7 +17,10 @@ description: |
 
 properties:
   compatible:
-    const: ralink,rt305x-pinctrl
+    oneOf:
+      - const: ralink,rt305x-pinctrl
+      - const: ralink,rt2880-pinmux
+        deprecated: true
 
 patternProperties:
   '-pins$':
diff --git a/Documentation/devicetree/bindings/pinctrl/ralink,rt3352-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/ralink,rt3352-pinctrl.yaml
index c9bc6cfd834c..f87038cadfc8 100644
--- a/Documentation/devicetree/bindings/pinctrl/ralink,rt3352-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/ralink,rt3352-pinctrl.yaml
@@ -17,7 +17,10 @@ description: |
 
 properties:
   compatible:
-    const: ralink,rt3352-pinctrl
+    oneOf:
+      - const: ralink,rt3352-pinctrl
+      - const: ralink,rt2880-pinmux
+        deprecated: true
 
 patternProperties:
   '-pins$':
diff --git a/Documentation/devicetree/bindings/pinctrl/ralink,rt3883-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/ralink,rt3883-pinctrl.yaml
index 8d14e525b25e..3a13a69f7752 100644
--- a/Documentation/devicetree/bindings/pinctrl/ralink,rt3883-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/ralink,rt3883-pinctrl.yaml
@@ -17,7 +17,10 @@ description: |
 
 properties:
   compatible:
-    const: ralink,rt3883-pinctrl
+    oneOf:
+      - const: ralink,rt3883-pinctrl
+      - const: ralink,rt2880-pinmux
+        deprecated: true
 
 patternProperties:
   '-pins$':
diff --git a/Documentation/devicetree/bindings/pinctrl/ralink,rt5350-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/ralink,rt5350-pinctrl.yaml
index f248202ce866..1231f442afbc 100644
--- a/Documentation/devicetree/bindings/pinctrl/ralink,rt5350-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/ralink,rt5350-pinctrl.yaml
@@ -17,7 +17,10 @@ description: |
 
 properties:
   compatible:
-    const: ralink,rt5350-pinctrl
+    oneOf:
+      - const: ralink,rt5350-pinctrl
+      - const: ralink,rt2880-pinmux
+        deprecated: true
 
 patternProperties:
   '-pins$':
-- 
2.39.2


