Return-Path: <devicetree+bounces-438-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 39DB27A1858
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 10:13:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4A4051C20BF6
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 08:13:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE03DDDB4;
	Fri, 15 Sep 2023 08:12:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59721D535
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 08:12:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE243C116B8;
	Fri, 15 Sep 2023 08:12:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694765529;
	bh=FVZcKV3LxPMDm+IA8AONdnZVyQLpDqMHQRxLtpl2eeU=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=gSuPZqfbhRby1xgFDgznXvA7UrKMOkXDAtvnrMqL9AW7ffZdz1E+0EU9WNCfNkugv
	 5nIean6PM/w7cMwBcfi+/sN//UHbkbuv+Y5CF8jUyg+VFYbIQG/v8BOH4jWK+s+IBz
	 PCnEsJsFG7msCKX0gd6cnlW1kxtaD9DbBuqjtONGvOQ3spGjbuZXvefS0MwJGGGmMB
	 tPa7N8G5qhzbXG51h57EbMpGiuktUEgv1d36SO9/h2ieiB7wo4K61amKiIUl2ETYGF
	 2U0Y5wmKmBL9Lcwn6HvWU36cOmKlO8+p++7SZJTJlYs4PDzPSco/veU8tCcLPqAQvG
	 wZlvB0f39l5GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9918CEE6440;
	Fri, 15 Sep 2023 08:12:09 +0000 (UTC)
From:
 Nikita Shubin via B4 Relay <devnull+nikita.shubin.maquefel.me@kernel.org>
Date: Fri, 15 Sep 2023 11:11:09 +0300
Subject: [PATCH v4 27/42] dt-bindings: ata: Add Cirrus EP93xx
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230915-ep93xx-v4-27-a1d779dcec10@maquefel.me>
References: <20230915-ep93xx-v4-0-a1d779dcec10@maquefel.me>
In-Reply-To: <20230915-ep93xx-v4-0-a1d779dcec10@maquefel.me>
To: Damien Le Moal <dlemoal@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-ide@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>, 
 Alexander Sverdlin <alexander.sverdlin@gmail.com>
X-Mailer: b4 0.13-dev-e3e53
X-Developer-Signature: v=1; a=ed25519-sha256; t=1694765525; l=1509;
 i=nikita.shubin@maquefel.me; s=20230718; h=from:subject:message-id;
 bh=DbMWLXuGCyyQJHZZBV/rVmcFRfTlaubiqRHcoupCo3g=; =?utf-8?q?b=3DMIdnvAs4OfKY?=
 =?utf-8?q?dORcyEWd+gwFSF99cx6WSzEHQUQN35+I+A1RLiEkn5wl2osMsUc86V6tJOT4ZLjU?=
 h32WR55QB2Fiqq5SW8AEXkylIldlcj7QRPdBm9V1V+COlr+NLZrn
X-Developer-Key: i=nikita.shubin@maquefel.me; a=ed25519;
 pk=vqf5YIUJ7BJv3EJFaNNxWZgGuMgDH6rwufTLflwU9ac=
X-Endpoint-Received:
 by B4 Relay for nikita.shubin@maquefel.me/20230718 with auth_id=65
X-Original-From: Nikita Shubin <nikita.shubin@maquefel.me>
Reply-To: <nikita.shubin@maquefel.me>

From: Nikita Shubin <nikita.shubin@maquefel.me>

Add YAML bindings for ep93xx SoC PATA.

Acked-by: Damien Le Moal <dlemoal@kernel.org>
Signed-off-by: Nikita Shubin <nikita.shubin@maquefel.me>
---
 .../bindings/ata/cirrus,ep9312-pata.yaml           | 42 ++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/Documentation/devicetree/bindings/ata/cirrus,ep9312-pata.yaml b/Documentation/devicetree/bindings/ata/cirrus,ep9312-pata.yaml
new file mode 100644
index 000000000000..8130923fdc72
--- /dev/null
+++ b/Documentation/devicetree/bindings/ata/cirrus,ep9312-pata.yaml
@@ -0,0 +1,42 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/ata/cirrus,ep9312-pata.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Cirrus Logic EP9312 PATA controller
+
+maintainers:
+  - Damien Le Moal <dlemoal@kernel.org>
+
+properties:
+  compatible:
+    oneOf:
+      - const: cirrus,ep9312-pata
+      - items:
+          - const: cirrus,ep9315-pata
+          - const: cirrus,ep9312-pata
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+additionalProperties: false
+
+examples:
+  - |
+    ide@800a0000 {
+        compatible = "cirrus,ep9312-pata";
+        reg = <0x800a0000 0x38>;
+        interrupt-parent = <&vic1>;
+        interrupts = <8>;
+        pinctrl-names = "default";
+        pinctrl-0 = <&ide_default_pins>;
+    };

-- 
2.39.2


