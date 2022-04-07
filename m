Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 845794F8406
	for <lists+devicetree@lfdr.de>; Thu,  7 Apr 2022 17:48:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242213AbiDGPup (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Apr 2022 11:50:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54774 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245629AbiDGPuh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Apr 2022 11:50:37 -0400
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E45A37017
        for <devicetree@vger.kernel.org>; Thu,  7 Apr 2022 08:48:34 -0700 (PDT)
Received: by mail-pj1-x102b.google.com with SMTP id n6-20020a17090a670600b001caa71a9c4aso6667798pjj.1
        for <devicetree@vger.kernel.org>; Thu, 07 Apr 2022 08:48:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rVDzWasu4LFPtiTdtuT0fQJci+geW8prRAJMs0MvNJs=;
        b=CqLAkxFmqY7uZa3FljfJImGtbKmA+thnG6EVDsvnMdd2RYi8gErG4Qr5O6uGEInw/C
         22K2/oBO3Y8kbhbNZH55C3ksossqFrGbMGU7thIA6QdIXEP1gHjHR3FF3LK6xegRLA6l
         2Dljb87Kou54TIsHSUa44eMkR2KVfbLq42BQoJWNPB8F0vXMbXV8E9uOxZKrPCCqqbV+
         fgize+a4113hCczqwowcoyC27WFFddosYa7TxdXame3rdGVizCxPWZxdpEodFGhhKtTm
         Vv2c3Tl9Y85xBNbFSxwSDx3nxkSGcXPrZDNUgxGj/0kb89HKbUcf6ma7ZzuKARbB+Lv9
         e+vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rVDzWasu4LFPtiTdtuT0fQJci+geW8prRAJMs0MvNJs=;
        b=6Lbm3IgkUglelbtOIuHZwNf3SeNYBX6iOC25z0xvteiGGjDJVIB3BuOM0jZ1DHFsBx
         QcEmMLQdrDNU1jnI5E348useuOTVxWm9IjPGxevWc8243nbWzV+bH+d2sq0qc+cjlv+k
         9pcLQF/165ks6WSglHAds1eBkEoUy1qbd4zXvhlv5iv3QjjRac4/N5umFqr5pfcc/wDd
         UPYX2I8N+W4Zf6pXFYe/QV3ZGDx+iC+XmmztJK+UpnoJYxwRtbE2PODfoEIIc7LWYI+D
         7J1qsbiuA+ZhqdVIj5sGUI0CJsjdpBETrHJ3Rozib9whHjSuhQIPeGXs1qftbZo7jKIb
         fBsw==
X-Gm-Message-State: AOAM530yWfy6z73/HVCKF8GPikFke5gkZ4Ldi9TvFTjYiVhHx6JpTZJV
        aavEcycDzX2FKT5PVMRJYHInPA==
X-Google-Smtp-Source: ABdhPJwAqIaxlU8mEcMM7hZI51g7vTHBP9V64lhp+ZhQiHP0SJO2cTwqtlWnMIj6dTDayO+qdSus4w==
X-Received: by 2002:a17:90a:380f:b0:1bd:4aa6:651 with SMTP id w15-20020a17090a380f00b001bd4aa60651mr16533861pjb.83.1649346514409;
        Thu, 07 Apr 2022 08:48:34 -0700 (PDT)
Received: from x1.hsd1.or.comcast.net ([2601:1c2:1001:7090:172d:8708:69ef:da3a])
        by smtp.gmail.com with ESMTPSA id f6-20020a056a00238600b004fae79a3cbfsm24695938pfc.100.2022.04.07.08.48.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Apr 2022 08:48:33 -0700 (PDT)
From:   Drew Fustini <dfustini@baylibre.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Dave Gerlach <d-gerlach@ti.com>, Suman Anna <s-anna@ti.com>,
        Tony Lindgren <tony@atomide.com>, Nishanth Menon <nm@ti.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Drew Fustini <dfustini@baylibre.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3] dt-bindings: soc: ti: wkup_m3_ipc: convert bindings to json-schema
Date:   Thu,  7 Apr 2022 08:46:20 -0700
Message-Id: <20220407154618.2297171-1-dfustini@baylibre.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the wkup_m3_ipc bindings documentation to json-schema.

Link: https://lore.kernel.org/linux-arm-kernel/20220221125522.l3tntb6i7yjxp6vb@flattered/
Suggested-by: Nishanth Menon <nm@ti.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Drew Fustini <dfustini@baylibre.com>
---
 .../bindings/soc/ti/wkup-m3-ipc.yaml          | 81 +++++++++++++++++++
 .../bindings/soc/ti/wkup_m3_ipc.txt           | 57 -------------
 2 files changed, 81 insertions(+), 57 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/soc/ti/wkup-m3-ipc.yaml
 delete mode 100644 Documentation/devicetree/bindings/soc/ti/wkup_m3_ipc.txt

Changes in v3:
- rename underscores to hyphens in the filename

Changes in v2:
- removed unnecessary line breaks and shorten property descriptions

diff --git a/Documentation/devicetree/bindings/soc/ti/wkup-m3-ipc.yaml b/Documentation/devicetree/bindings/soc/ti/wkup-m3-ipc.yaml
new file mode 100644
index 000000000000..d855c01ce61c
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/ti/wkup-m3-ipc.yaml
@@ -0,0 +1,81 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/ti/wkup-m3-ipc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Wakeup M3 IPC device
+
+maintainers:
+  - Dave Gerlach <d-gerlach@ti.com>
+  - Drew Fustini <dfustini@baylibre.com>
+
+description: |+
+  The TI AM33xx and AM43xx family of devices use a small Cortex M3 co-processor
+  (commonly referred to as Wakeup M3 or CM3) to help with various low power tasks
+  that cannot be controlled from the MPU, like suspend/resume and certain deep
+  C-states for CPU Idle. Once the wkup_m3_ipc driver uses the wkup_m3_rproc driver
+  to boot the wkup_m3, it handles communication with the CM3 using IPC registers
+  present in the SoC's control module and a mailbox. The wkup_m3_ipc exposes an
+  API to allow the SoC PM code to execute specific PM tasks.
+
+  Wkup M3 Device Node
+  ====================
+  A wkup_m3_ipc device node is used to represent the IPC registers within an
+  SoC.
+
+properties:
+  compatible:
+    enum:
+      - ti,am3352-wkup-m3-ipc # for AM33xx SoCs
+      - ti,am4372-wkup-m3-ipc # for AM43xx SoCs
+
+  reg:
+    description:
+      The IPC register address space to communicate with the Wakeup M3 processor
+    maxItems: 1
+
+  interrupts:
+    description: wkup_m3 interrupt that signals the MPU
+    maxItems: 1
+
+  ti,rproc:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      phandle to the wkup_m3 rproc node so the IPC driver can boot it
+
+  mboxes:
+    description:
+      phandles used by IPC framework to get correct mbox
+      channel for communication. Must point to appropriate
+      mbox_wkupm3 child node.
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - ti,rproc
+  - mboxes
+
+additionalProperties: false
+
+examples:
+  - |
+    soc {
+        #address-cells = <1>;
+        #size-cells = <1>;
+
+        mailbox: mailbox {
+            #mbox-cells = <1>;
+        };
+
+        wkup_m3_ipc: wkup_m3_ipc@1324 {
+           compatible = "ti,am3352-wkup-m3-ipc";
+           reg = <0x1324 0x24>;
+           interrupts = <78>;
+           ti,rproc = <&wkup_m3>;
+           mboxes = <&mailbox &mbox_wkupm3>;
+        };
+    };
+...
diff --git a/Documentation/devicetree/bindings/soc/ti/wkup_m3_ipc.txt b/Documentation/devicetree/bindings/soc/ti/wkup_m3_ipc.txt
deleted file mode 100644
index 401550487ed6..000000000000
--- a/Documentation/devicetree/bindings/soc/ti/wkup_m3_ipc.txt
+++ /dev/null
@@ -1,57 +0,0 @@
-Wakeup M3 IPC Driver
-=====================
-
-The TI AM33xx and AM43xx family of devices use a small Cortex M3 co-processor
-(commonly referred to as Wakeup M3 or CM3) to help with various low power tasks
-that cannot be controlled from the MPU, like suspend/resume and certain deep
-C-states for CPU Idle. Once the wkup_m3_ipc driver uses the wkup_m3_rproc driver
-to boot the wkup_m3, it handles communication with the CM3 using IPC registers
-present in the SoC's control module and a mailbox. The wkup_m3_ipc exposes an
-API to allow the SoC PM code to execute specific PM tasks.
-
-Wkup M3 Device Node:
-====================
-A wkup_m3_ipc device node is used to represent the IPC registers within an
-SoC.
-
-Required properties:
---------------------
-- compatible:		Should be,
-				"ti,am3352-wkup-m3-ipc" for AM33xx SoCs
-				"ti,am4372-wkup-m3-ipc" for AM43xx SoCs
-- reg:			Contains the IPC register address space to communicate
-			with the Wakeup M3 processor
-- interrupts:		Contains the interrupt information for the wkup_m3
-			interrupt that signals the MPU.
-- ti,rproc:		phandle to the wkup_m3 rproc node so the IPC driver
-			can boot it.
-- mboxes:		phandles used by IPC framework to get correct mbox
-			channel for communication. Must point to appropriate
-			mbox_wkupm3 child node.
-
-Example:
---------
-/* AM33xx */
-	l4_wkup: l4_wkup@44c00000 {
-		...
-
-		scm: scm@210000 {
-			compatible = "ti,am3-scm", "simple-bus";
-			reg = <0x210000 0x2000>;
-			#address-cells = <1>;
-			#size-cells = <1>;
-			ranges = <0 0x210000 0x2000>;
-
-			...
-
-			wkup_m3_ipc: wkup_m3_ipc@1324 {
-				compatible = "ti,am3352-wkup-m3-ipc";
-				reg = <0x1324 0x24>;
-				interrupts = <78>;
-				ti,rproc = <&wkup_m3>;
-				mboxes = <&mailbox &mbox_wkupm3>;
-			};
-
-			...
-		};
-	};
-- 
2.32.0

