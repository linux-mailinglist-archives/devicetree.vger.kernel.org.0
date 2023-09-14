Return-Path: <devicetree+bounces-302-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 13F7A7A0DB2
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 21:01:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6E00EB20AA8
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 19:01:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FA592137E;
	Thu, 14 Sep 2023 19:00:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B345810A2F
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 19:00:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 47243C433C9;
	Thu, 14 Sep 2023 19:00:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694718057;
	bh=qShUtFOUyzVf8/Vy8Ou2aMiD2+CkI0mrrVsJEqs5+Do=;
	h=From:To:Cc:Subject:Date:From;
	b=WD3EM3v+YCsBFw/HyGd5NpYli5TyFDn1qgSxdXNa5AQACYr3nq+s4WGnNeZcmLYZw
	 LYMq6jvrnI2End4qZDjcMCF1z8XvldTNI/k8tOuxi/ugnRwcZPCQ0yKNLwaJInp47j
	 IvasPjFi9rX51Y01FD0p2ScHUnJbNP9YkA4TElP2gve9YSNRTo1tWFhbAwVYo1bwGR
	 CKcXDOgJ2aqC0f45FYpbx1Wsgxexl6tSsNuPsQkr8tFjvP/o6ePwxJif3z2LquVvjM
	 GxwKSGl13V/8sq6EjXNIIiazum1ELgB/n+hCMfrqAIZWrYztj079ccJWpn+NN8Lnzu
	 5IbAWdz5aC6xQ==
Received: (nullmailer pid 1853444 invoked by uid 1000);
	Thu, 14 Sep 2023 19:00:55 -0000
From: Rob Herring <robh@kernel.org>
To: Mark Brown <broonie@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, Erwan Leray <erwan.leray@foss.st.com>, Fabrice Gasnier <fabrice.gasnier@foss.st.com>
Cc: linux-spi@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Subject: [PATCH] spi: dt-bindings: st,stm32-spi: Move "st,spi-midi-ns" to spi-peripheral-props.yaml
Date: Thu, 14 Sep 2023 14:00:42 -0500
Message-Id: <20230914190049.1853136-1-robh@kernel.org>
X-Mailer: git-send-email 2.40.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

In order to validate SPI peripherals, SPI controller-specific child node
properties need to be in a separate schema, spi-peripheral-props.yaml,
which SPI peripheral schemas reference. As there is just a single
property in this case, just add it to spi-peripheral-props.yaml directly.

Signed-off-by: Rob Herring <robh@kernel.org>
---
 .../bindings/spi/spi-peripheral-props.yaml    |  5 +++++
 .../devicetree/bindings/spi/st,stm32-spi.yaml | 20 -------------------
 2 files changed, 5 insertions(+), 20 deletions(-)

diff --git a/Documentation/devicetree/bindings/spi/spi-peripheral-props.yaml b/Documentation/devicetree/bindings/spi/spi-peripheral-props.yaml
index dc4f7bb47090..15938f81fdce 100644
--- a/Documentation/devicetree/bindings/spi/spi-peripheral-props.yaml
+++ b/Documentation/devicetree/bindings/spi/spi-peripheral-props.yaml
@@ -113,6 +113,11 @@ properties:
     minItems: 2
     maxItems: 4
 
+  st,spi-midi-ns:
+    description: |
+      Only for STM32H7, (Master Inter-Data Idleness) minimum time
+      delay in nanoseconds inserted between two consecutive data frames.
+
 # The controller specific properties go here.
 allOf:
   - $ref: arm,pl022-peripheral-props.yaml#
diff --git a/Documentation/devicetree/bindings/spi/st,stm32-spi.yaml b/Documentation/devicetree/bindings/spi/st,stm32-spi.yaml
index 9ca1a843c820..ae0f082bd377 100644
--- a/Documentation/devicetree/bindings/spi/st,stm32-spi.yaml
+++ b/Documentation/devicetree/bindings/spi/st,stm32-spi.yaml
@@ -18,15 +18,6 @@ maintainers:
 
 allOf:
   - $ref: spi-controller.yaml#
-  - if:
-      properties:
-        compatible:
-          contains:
-            const: st,stm32f4-spi
-
-    then:
-      properties:
-        st,spi-midi-ns: false
 
 properties:
   compatible:
@@ -59,17 +50,6 @@ properties:
       - const: rx
       - const: tx
 
-patternProperties:
-  "^[a-zA-Z][a-zA-Z0-9,+\\-._]{0,63}@[0-9a-f]+$":
-    type: object
-    # SPI slave nodes must be children of the SPI master node and can
-    # contain the following properties.
-    properties:
-      st,spi-midi-ns:
-        description: |
-          Only for STM32H7, (Master Inter-Data Idleness) minimum time
-          delay in nanoseconds inserted between two consecutive data frames.
-
 required:
   - compatible
   - reg
-- 
2.40.1


