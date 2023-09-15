Return-Path: <devicetree+bounces-432-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 419107A183A
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 10:13:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 36CC51C20BC1
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 08:13:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8ADFED515;
	Fri, 15 Sep 2023 08:12:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB629D311
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 08:12:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBD8CC433CD;
	Fri, 15 Sep 2023 08:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694765528;
	bh=v5iaPlwXd/OKY/Q0WHziCUY1RlsKsYRSD0RKIEbGFGg=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=WMKteJrg4A5p3BceRlRbO4zdB9oYR8O8w2izAvAbU1v2qEHoquSyMZolEPMOVSHge
	 nilyBpC2ZdBMOsv0ssWVxXJsoa3awV8m1wYnMlqx1qwzdBkYE+30ihO5yOsX58G59Y
	 tJ1iRU7yLeOZ2eVWhUaw7e9TRaMV+/6DD0cmqVOJZom65pPaEs6TFYLPEI5ekqBb35
	 N6H1v7DbuTULua0DiouHHIOpD4SINcvDTGxgjfjhgRZwIooN3yGW6jQJMEc4CnWkpc
	 4Yw/xSCKsxAj9G6qReWCKPcSPZj0+y/MYx5x7q++BO0nnncKjDghx0jBZMqDdjV2A4
	 limLHiG7G/EyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CABA1EE643A;
	Fri, 15 Sep 2023 08:12:08 +0000 (UTC)
From:
 Nikita Shubin via B4 Relay <devnull+nikita.shubin.maquefel.me@kernel.org>
Date: Fri, 15 Sep 2023 11:10:55 +0300
Subject: [PATCH v4 13/42] dt-bindings: rtc: Add Cirrus EP93xx
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230915-ep93xx-v4-13-a1d779dcec10@maquefel.me>
References: <20230915-ep93xx-v4-0-a1d779dcec10@maquefel.me>
In-Reply-To: <20230915-ep93xx-v4-0-a1d779dcec10@maquefel.me>
To: Alessandro Zummo <a.zummo@towertech.it>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Hartley Sweeten <hsweeten@visionengravers.com>, 
 Alexander Sverdlin <alexander.sverdlin@gmail.com>
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>, 
 Alexander Sverdlin <alexander.sverdlin@gmail.com>
X-Mailer: b4 0.13-dev-e3e53
X-Developer-Signature: v=1; a=ed25519-sha256; t=1694765525; l=1532;
 i=nikita.shubin@maquefel.me; s=20230718; h=from:subject:message-id;
 bh=llBn19+N5OMsRAdced6fEa337zLi62mxyrYZPxL4bew=; =?utf-8?q?b=3DZEueZSJSmLtX?=
 =?utf-8?q?mleqTaxRhGsWXM8QLlULSAgo2aJpe4urGGdUI7wdA/bYKuWMRfxgJAgzDo/H2onI?=
 1Z96r9a5DRYiQ4slaT+nGmY+UlR0BkVjLT7Ts0ff+0gL26fWq1LZ
X-Developer-Key: i=nikita.shubin@maquefel.me; a=ed25519;
 pk=vqf5YIUJ7BJv3EJFaNNxWZgGuMgDH6rwufTLflwU9ac=
X-Endpoint-Received:
 by B4 Relay for nikita.shubin@maquefel.me/20230718 with auth_id=65
X-Original-From: Nikita Shubin <nikita.shubin@maquefel.me>
Reply-To: <nikita.shubin@maquefel.me>

From: Nikita Shubin <nikita.shubin@maquefel.me>

Add device tree bindings for the Cirrus Logic EP93xx RTC block
used in these SoCs.

Signed-off-by: Nikita Shubin <nikita.shubin@maquefel.me>
---
 .../devicetree/bindings/rtc/cirrus,ep9301-rtc.yaml | 42 ++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/Documentation/devicetree/bindings/rtc/cirrus,ep9301-rtc.yaml b/Documentation/devicetree/bindings/rtc/cirrus,ep9301-rtc.yaml
new file mode 100644
index 000000000000..a95f6af2b1c0
--- /dev/null
+++ b/Documentation/devicetree/bindings/rtc/cirrus,ep9301-rtc.yaml
@@ -0,0 +1,42 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/rtc/cirrus,ep9301-rtc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Cirrus EP93xx Real Time Clock controller
+
+maintainers:
+  - Hartley Sweeten <hsweeten@visionengravers.com>
+  - Alexander Sverdlin <alexander.sverdlin@gmail.com>
+
+allOf:
+  - $ref: rtc.yaml#
+
+properties:
+  compatible:
+    oneOf:
+      - const: cirrus,ep9301-rtc
+      - items:
+          - enum:
+              - cirrus,ep9302-rtc
+              - cirrus,ep9307-rtc
+              - cirrus,ep9312-rtc
+              - cirrus,ep9315-rtc
+          - const: cirrus,ep9301-rtc
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    rtc@80920000 {
+        compatible = "cirrus,ep9301-rtc";
+        reg = <0x80920000 0x100>;
+    };

-- 
2.39.2


