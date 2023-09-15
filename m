Return-Path: <devicetree+bounces-429-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 70E967A1834
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 10:13:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9506E1C20C46
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 08:13:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06A1AD529;
	Fri, 15 Sep 2023 08:12:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17B87D304
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 08:12:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B8B5C433BF;
	Fri, 15 Sep 2023 08:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694765528;
	bh=mBGim63dwvkGq1RMDM5Ao090NhWpVH65a2ZkwL5Yo+c=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=u1M5Sr1rKE4VUdkj5gad3rIT2Mdb2CeODYn1HDPO4k0ATClau4oCyrK1d67BLOfHx
	 Cns8iqShkUh/abvdesfhS5k1ytbS68z/os8XiW2mwyMhqiSkprve+GIx05/oali1IE
	 NFcn4fraxNPWIuY1TuVjA1yUlIce2jjG5bbipIdt4ZqFNFRJYsaxRNkKZRcjh9aakE
	 sbvmNcf7GbjpoRA+P7KvAwbm+bEhhDQbzs0/NJczyVULdDLrh2BkhjU49y3YMYR8E8
	 CHnEBcS1kh8hxD5IQ2wHijp0Kq0qthph/gLwkh9tWU3/S/9FD4ZBhAadEEEGjHDw/K
	 l38a5GvfivWkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67CDDEE643C;
	Fri, 15 Sep 2023 08:12:08 +0000 (UTC)
From:
 Nikita Shubin via B4 Relay <devnull+nikita.shubin.maquefel.me@kernel.org>
Date: Fri, 15 Sep 2023 11:10:49 +0300
Subject: [PATCH v4 07/42] dt-bindings: power: reset: Add ep93xx reset
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230915-ep93xx-v4-7-a1d779dcec10@maquefel.me>
References: <20230915-ep93xx-v4-0-a1d779dcec10@maquefel.me>
In-Reply-To: <20230915-ep93xx-v4-0-a1d779dcec10@maquefel.me>
To: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Alexander Sverdlin <alexander.sverdlin@gmail.com>, 
 Nikita Shubin <nikita.shubin@maquefel.me>
Cc: linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>, 
 Alexander Sverdlin <alexander.sverdlin@gmail.com>
X-Mailer: b4 0.13-dev-e3e53
X-Developer-Signature: v=1; a=ed25519-sha256; t=1694765525; l=1426;
 i=nikita.shubin@maquefel.me; s=20230718; h=from:subject:message-id;
 bh=I52sOmITYDAEad5VX3+fpK9zHNrJkryMKM/Emu0XkSM=; =?utf-8?q?b=3DZtroFVL5l1BX?=
 =?utf-8?q?jZW9O7+Rvy4kPDH1r3mWCx53MerJIRqRsyqoeay/OjfOjFrXU/QtPDu3EVDszrKH?=
 F5WJpICTCOIlM1RKp8v7GkkVjVPteUPoBV3E1dJmO5b4s/h3kDWz
X-Developer-Key: i=nikita.shubin@maquefel.me; a=ed25519;
 pk=vqf5YIUJ7BJv3EJFaNNxWZgGuMgDH6rwufTLflwU9ac=
X-Endpoint-Received:
 by B4 Relay for nikita.shubin@maquefel.me/20230718 with auth_id=65
X-Original-From: Nikita Shubin <nikita.shubin@maquefel.me>
Reply-To: <nikita.shubin@maquefel.me>

From: Nikita Shubin <nikita.shubin@maquefel.me>

Add YAML bindings for ep93xx reset.

Signed-off-by: Nikita Shubin <nikita.shubin@maquefel.me>
---
 .../bindings/power/reset/cirrus,ep9301-reboot.yaml | 34 ++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/reset/cirrus,ep9301-reboot.yaml b/Documentation/devicetree/bindings/power/reset/cirrus,ep9301-reboot.yaml
new file mode 100644
index 000000000000..a5a718dec4b5
--- /dev/null
+++ b/Documentation/devicetree/bindings/power/reset/cirrus,ep9301-reboot.yaml
@@ -0,0 +1,34 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/power/reset/cirrus,ep9301-reboot.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Cirrus EP93xx SoC family reset controller
+
+maintainers:
+  - Alexander Sverdlin <alexander.sverdlin@gmail.com>
+  - Nikita Shubin <nikita.shubin@maquefel.me>
+
+properties:
+  compatible:
+    oneOf:
+      - const: cirrus,ep9301-reboot
+      - items:
+          - enum:
+              - cirrus,ep9302-reboot
+              - cirrus,ep9307-reboot
+              - cirrus,ep9312-reboot
+              - cirrus,ep9315-reboot
+          - const: cirrus,ep9301-reboot
+
+required:
+  - compatible
+
+additionalProperties: false
+
+examples:
+  - |
+    reboot {
+        compatible = "cirrus,ep9301-reboot";
+    };

-- 
2.39.2


