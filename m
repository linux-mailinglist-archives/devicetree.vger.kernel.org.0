Return-Path: <devicetree+bounces-431-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EB8C7A1836
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 10:13:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 893211C20BF4
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 08:13:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 438AFD304;
	Fri, 15 Sep 2023 08:12:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8544D515
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 08:12:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 45FCEC4AF6A;
	Fri, 15 Sep 2023 08:12:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694765529;
	bh=AJOxq9KL91+ypzRq8FSNXqNL+1/sDSdv8XUoYc+ZaWA=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=dFa320Rx8AC0YgPIqrQ5vwgY0hlyTHtzoletP5IAQBMW84n8FhrqyL4PYGvWWeRqX
	 nDtaQzJsoZ1pDL8yk2AGsc1C9EmF6/lxe9AE+iAIOZbqI5k/hPddYo7W+1gjc7FqgX
	 Mj+TD0M0U4OTOi6B8/x1N8bB8fKmOHyuonAfMFihJRua+ADqMwlmyxXNp3791v84Hq
	 b/ECb+mly8nGtdI5xRwTS3ewA1u24T436sLMuZ2CXhPxo+3xSLiWCLO2VOHmE5gTHU
	 wQ/FJf3ZVaVnycDuvB/P+DnmoZvAsdKmV+/Ooz/30wfzYAhtaU20mrijSo+TWYdD53
	 w+Js8UnH16rLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 34276EE643F;
	Fri, 15 Sep 2023 08:12:09 +0000 (UTC)
From:
 Nikita Shubin via B4 Relay <devnull+nikita.shubin.maquefel.me@kernel.org>
Date: Fri, 15 Sep 2023 11:11:01 +0300
Subject: [PATCH v4 19/42] dt-bindings: spi: Add Cirrus EP93xx
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230915-ep93xx-v4-19-a1d779dcec10@maquefel.me>
References: <20230915-ep93xx-v4-0-a1d779dcec10@maquefel.me>
In-Reply-To: <20230915-ep93xx-v4-0-a1d779dcec10@maquefel.me>
To: Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Alexander Sverdlin <alexander.sverdlin@gmail.com>, 
 Nikita Shubin <nikita.shubin@maquefel.me>
Cc: linux-spi@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>, 
 Alexander Sverdlin <alexander.sverdlin@gmail.com>
X-Mailer: b4 0.13-dev-e3e53
X-Developer-Signature: v=1; a=ed25519-sha256; t=1694765525; l=1960;
 i=nikita.shubin@maquefel.me; s=20230718; h=from:subject:message-id;
 bh=tdhmWagF5iNeO7z8r8/xdsdQ5lYDmoH1mE95dOK01mw=; =?utf-8?q?b=3Dwe/DVzQRkU6t?=
 =?utf-8?q?iAPVQZ0mHIJiM+5PDUKDQ4uzqeFd3lRMqUMH5bbgEqYf7Wg+kQlFdmnIMj849a/y?=
 gWDaVUkcCs/oykJPbiClaDsxeQ1rKuQlG5mUzjL66iLOLHVYSRyI
X-Developer-Key: i=nikita.shubin@maquefel.me; a=ed25519;
 pk=vqf5YIUJ7BJv3EJFaNNxWZgGuMgDH6rwufTLflwU9ac=
X-Endpoint-Received:
 by B4 Relay for nikita.shubin@maquefel.me/20230718 with auth_id=65
X-Original-From: Nikita Shubin <nikita.shubin@maquefel.me>
Reply-To: <nikita.shubin@maquefel.me>

From: Nikita Shubin <nikita.shubin@maquefel.me>

Add YAML bindings for ep93xx SoC SPI.

Signed-off-by: Nikita Shubin <nikita.shubin@maquefel.me>
---
 .../devicetree/bindings/spi/cirrus,ep9301-spi.yaml | 61 ++++++++++++++++++++++
 1 file changed, 61 insertions(+)

diff --git a/Documentation/devicetree/bindings/spi/cirrus,ep9301-spi.yaml b/Documentation/devicetree/bindings/spi/cirrus,ep9301-spi.yaml
new file mode 100644
index 000000000000..945108abfc94
--- /dev/null
+++ b/Documentation/devicetree/bindings/spi/cirrus,ep9301-spi.yaml
@@ -0,0 +1,61 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/spi/cirrus,ep9301-spi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: EP93xx SoC SPI controller
+
+maintainers:
+  - Alexander Sverdlin <alexander.sverdlin@gmail.com>
+  - Nikita Shubin <nikita.shubin@maquefel.me>
+
+allOf:
+  - $ref: spi-controller.yaml#
+
+properties:
+  compatible:
+    oneOf:
+      - const: cirrus,ep9301-spi
+      - items:
+          - enum:
+              - cirrus,ep9302-spi
+              - cirrus,ep9307-spi
+              - cirrus,ep9312-spi
+              - cirrus,ep9315-spi
+          - const: cirrus,ep9301-spi
+
+  reg:
+    items:
+      - description: SPI registers region
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: SPI Controller reference clock source
+
+  dmas:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/clock/cirrus,ep9301-clk.h>
+    spi@808a0000 {
+        compatible = "cirrus,ep9301-spi";
+        reg = <0x808a0000 0x18>;
+        interrupt-parent = <&vic1>;
+        interrupts = <21>;
+        clocks = <&syscon EP93XX_CLK_SPI>;
+        cs-gpios = <&gpio5 2 GPIO_ACTIVE_HIGH>;
+    };

-- 
2.39.2


