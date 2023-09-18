Return-Path: <devicetree+bounces-1019-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 07FF27A4652
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 11:47:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1F6B91C20BF8
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 09:47:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 090B21C2B0;
	Mon, 18 Sep 2023 09:47:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338BA134BD
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 09:47:00 +0000 (UTC)
Received: from mg.richtek.com (mg.richtek.com [220.130.44.152])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 744FD12B;
	Mon, 18 Sep 2023 02:46:34 -0700 (PDT)
X-MailGates: (SIP:2,PASS,NONE)(compute_score:DELIVER,40,3)
Received: from 192.168.10.47
	by mg.richtek.com with MailGates ESMTPS Server V6.0(1978093:0:AUTH_RELAY)
	(envelope-from <cy_huang@richtek.com>)
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256/256); Mon, 18 Sep 2023 17:45:51 +0800 (CST)
Received: from ex4.rt.l (192.168.10.47) by ex4.rt.l (192.168.10.47) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.25; Mon, 18 Sep
 2023 17:45:50 +0800
Received: from linuxcarl2.richtek.com (192.168.10.154) by ex4.rt.l
 (192.168.10.45) with Microsoft SMTP Server id 15.2.1118.25 via Frontend
 Transport; Mon, 18 Sep 2023 17:45:50 +0800
From: <cy_huang@richtek.com>
To: Mark Brown <broonie@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>
CC: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, ChiYuan
 Huang <cy_huang@richtek.com>, Allen Lin <allen_lin@richtek.com>,
	<alsa-devel@alsa-project.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>
Subject: [PATCH 1/2] ASoC: dt-bindings: Add Richtek rtq9128 audio amplifier
Date: Mon, 18 Sep 2023 17:45:40 +0800
Message-ID: <1695030341-20711-2-git-send-email-cy_huang@richtek.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1695030341-20711-1-git-send-email-cy_huang@richtek.com>
References: <1695030341-20711-1-git-send-email-cy_huang@richtek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: ChiYuan Huang <cy_huang@richtek.com>

Create richtek,rtq9128.yaml for rtq9128 amplifier.

Signed-off-by: ChiYuan Huang <cy_huang@richtek.com>
---
 .../bindings/sound/richtek,rtq9128.yaml       | 51 +++++++++++++++++++
 1 file changed, 51 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/richtek,rtq9128.yaml

diff --git a/Documentation/devicetree/bindings/sound/richtek,rtq9128.yaml b/Documentation/devicetree/bindings/sound/richtek,rtq9128.yaml
new file mode 100644
index 000000000000..a79694c2b169
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/richtek,rtq9128.yaml
@@ -0,0 +1,51 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/richtek,rtq9128.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Richtek RTQ9128 Automative Audio Power Amplifier
+
+maintainers:
+  - ChiYuan Huang <cy_huang@richtek.com>
+
+description: |
+  The RTQ9128 is a ultra-low output noise, high-efficiency, four-channel
+  class-D audio power amplifier and delivering 4x75W into 4OHm at 10%
+  THD+N from a 25V supply in automotive applications.
+
+properties:
+  compatible:
+    enum:
+      - richtek,rtq9128
+
+  reg:
+    maxItems: 1
+
+  enable-gpios:
+    maxItems: 1
+
+  '#sound-dai-cells':
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - '#sound-dai-cells'
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    i2c {
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      speaker@1a {
+        compatible = "richtek,rtq9128";
+        reg = <0x1a>;
+        enable-gpios = <&gpio 26 GPIO_ACTIVE_HIGH>;
+        #sound-dai-cells = <0>;
+      };
+    };
-- 
2.34.1


