Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3FA74655309
	for <lists+devicetree@lfdr.de>; Fri, 23 Dec 2022 18:05:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231592AbiLWREw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Dec 2022 12:04:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229658AbiLWREu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Dec 2022 12:04:50 -0500
Received: from smtp-out-12.comm2000.it (smtp-out-12.comm2000.it [212.97.32.82])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C03E117E20
        for <devicetree@vger.kernel.org>; Fri, 23 Dec 2022 09:04:48 -0800 (PST)
Received: from francesco-nb.pivistrello.it (93-49-2-63.ip317.fastwebnet.it [93.49.2.63])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: francesco@dolcini.it)
        by smtp-out-12.comm2000.it (Postfix) with ESMTPSA id 64BD1BA1295;
        Fri, 23 Dec 2022 18:04:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailserver.it;
        s=mailsrv; t=1671815087;
        bh=mtp3kFQMzjrZNFJkDe3sRbLgEXGBt1RMFInWW5P6osI=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References;
        b=qDAbNUyDxcYU5wOqczo2w5eKhMdepAGvIRDVtIOvc9IFqzAZiX8+NBYNSsj3+fyBC
         fzTsK3XcSDQ0hEELcIvZnaVWTph1+FTfMcTIqgrE54xRSn5c16srPUI3M+CB4d6386
         B9EEHE+m3r4rt/dNOuX+YtT/CyH370BcP7yrK3vG29tBl/yqGrw4/v95ehYwdvUO4P
         t+EOo8g0AMNmJRm9Qjw/NmGyzRvHgm4rONWa2SAr9BywOVsyhmM1aqzXWjGqUEmqys
         PjjBA4Za6qxNlo1rgrRwMf6C0DmTFi90N4QQ8utuxqOt+LN0FAU+iNSzC2/1AFjApl
         0A1n7dHpPYk6Q==
From:   Francesco Dolcini <francesco@dolcini.it>
To:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org
Cc:     Emanuele Ghidoli <emanuele.ghidoli@toradex.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Benjamin Marty <info@benjaminmarty.ch>, kchsu0@nuvoton.com,
        wtli@nuvoton.com, David Lin <CTLIN0@nuvoton.com>,
        Francesco Dolcini <francesco.dolcini@toradex.com>
Subject: [PATCH v1 1/3] ASoC: dt-bindings: nau8822: convert to the dtschema
Date:   Fri, 23 Dec 2022 18:04:02 +0100
Message-Id: <20221223170404.210603-2-francesco@dolcini.it>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221223170404.210603-1-francesco@dolcini.it>
References: <20221223170404.210603-1-francesco@dolcini.it>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Emanuele Ghidoli <emanuele.ghidoli@toradex.com>

Convert nau8822 devicetree binding to dtschema.
Change file name to match dtschema naming.

Cc: David Lin <CTLIN0@nuvoton.com>
Signed-off-by: Emanuele Ghidoli <emanuele.ghidoli@toradex.com>
Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>
---
 .../devicetree/bindings/sound/nau8822.txt     | 16 --------
 .../bindings/sound/nuvoton,nau8822.yaml       | 40 +++++++++++++++++++
 2 files changed, 40 insertions(+), 16 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sound/nau8822.txt
 create mode 100644 Documentation/devicetree/bindings/sound/nuvoton,nau8822.yaml

diff --git a/Documentation/devicetree/bindings/sound/nau8822.txt b/Documentation/devicetree/bindings/sound/nau8822.txt
deleted file mode 100644
index a471d162d4e5..000000000000
--- a/Documentation/devicetree/bindings/sound/nau8822.txt
+++ /dev/null
@@ -1,16 +0,0 @@
-NAU8822 audio CODEC
-
-This device supports I2C only.
-
-Required properties:
-
-  - compatible : "nuvoton,nau8822"
-
-  - reg : the I2C address of the device.
-
-Example:
-
-codec: nau8822@1a {
-	compatible = "nuvoton,nau8822";
-	reg = <0x1a>;
-};
diff --git a/Documentation/devicetree/bindings/sound/nuvoton,nau8822.yaml b/Documentation/devicetree/bindings/sound/nuvoton,nau8822.yaml
new file mode 100644
index 000000000000..10464170a98f
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/nuvoton,nau8822.yaml
@@ -0,0 +1,40 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/nuvoton,nau8822.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NAU8822 audio CODEC
+
+description: |
+  24 bit stereo audio codec with speaker driver.
+  This device supports I2C/SPI. Currently, only I2C bus is supported.
+
+maintainers:
+  - David Lin <CTLIN0@nuvoton.com>
+
+properties:
+  compatible:
+    enum:
+      - nuvoton,nau8822
+
+  reg:
+    maxItems: 1
+
+additionalProperties: false
+
+required:
+  - compatible
+  - reg
+
+examples:
+  - |
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        codec@1a {
+            compatible = "nuvoton,nau8822";
+            reg = <0x1a>;
+        };
+    };
-- 
2.25.1

