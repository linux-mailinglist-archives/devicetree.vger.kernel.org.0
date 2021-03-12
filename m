Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0CC58338F1F
	for <lists+devicetree@lfdr.de>; Fri, 12 Mar 2021 14:50:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229667AbhCLNtn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Mar 2021 08:49:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50446 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231512AbhCLNta (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Mar 2021 08:49:30 -0500
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A245FC061574
        for <devicetree@vger.kernel.org>; Fri, 12 Mar 2021 05:49:29 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id x4so39148631lfu.7
        for <devicetree@vger.kernel.org>; Fri, 12 Mar 2021 05:49:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=xn/lPVU2isli6v7RdYcVyUi+d/4OcDX94LOr9JpzH90=;
        b=KIUeIpSzsDXRca+e/i/SXvmZu7VJW9WCZ59qsQPWU/Jzv8rcC4mTVO0cDgdPEnYSes
         DPxu8MU7Wh1dEcFxsJA5/aQu2aQg83MrLmNmRlQRAPVjGOJTKEk1LYO529NG9E0EAkRd
         dIrpdLEIOQ1/luqy2qa+JDN3qkbgDUpKMcivGZ/QqW0+pAoH/AkjpOaQTxDT9nVjGrvz
         QL2YgFfpRLZ4RUZmgBPw2w5NF5N7LFI73L5mJCV+WzWAonKDaiPVAUgej6Ej9CkSzSyw
         bE4XeegFIddkjRuNcSMIysC2WkLZqaseTRo9HJhyVajeYoUqfuraUpu7h8tZBY5yEk/4
         F8XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=xn/lPVU2isli6v7RdYcVyUi+d/4OcDX94LOr9JpzH90=;
        b=Cut4JpY4NbnQzgVKUnxExYSDSZQz/lHrNrhpwsID3UZP07bt0V4CMnCjw4AF/1TxSi
         2g9Hw7NXn/Fx7VfnXos10rcQyu9qJK0HJ3uk2X8dT5LdpxkWyl07YF3vVnu/24lX3MFL
         olpU6GK8EBHt8UNQXJPilCpDRG7sO45e2UFK5AurNnJf9ELHP4JT4UcbvrvIvOIURXfs
         e8juZluxL1PEUKjWeh9zaxTddpScz80e/P6TDIlROE5u0NsM3m+rVxI3MKiV230rIWYq
         D0eOP+tYFi5972whnIYbznOfCGVVPXtcjP6eU50Ldd2ctRONuX46k2vpJTin4tXukNIF
         8MJw==
X-Gm-Message-State: AOAM5308YwYPgR26PA6Jj4pQYYFq47W4sHibD9VkctIn/NJpSijl4JSZ
        2UISy/SGYOHl3InX333OEmniIuBYA+A=
X-Google-Smtp-Source: ABdhPJyA6rRyC0m4YsnH8JibvaIT7yIUiE6FEyGjVeFtCOgSlP2V0JaYR9MBqPwzqvx4q+WPiuetlA==
X-Received: by 2002:ac2:5a0b:: with SMTP id q11mr5430177lfn.391.1615556968040;
        Fri, 12 Mar 2021 05:49:28 -0800 (PST)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id j19sm1741071lfb.15.2021.03.12.05.49.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Mar 2021 05:49:27 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        Vivek Unune <npcomplete13@gmail.com>,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 1/2] dt-bindings: mtd: add binding for Linksys Northstar partitions
Date:   Fri, 12 Mar 2021 14:49:18 +0100
Message-Id: <20210312134919.7767-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

Linksys on Broadcom Northstar devices uses fixed flash layout with
multiple firmware partitions.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 .../mtd/partitions/linksys,ns-partitions.yaml | 74 +++++++++++++++++++
 1 file changed, 74 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mtd/partitions/linksys,ns-partitions.yaml

diff --git a/Documentation/devicetree/bindings/mtd/partitions/linksys,ns-partitions.yaml b/Documentation/devicetree/bindings/mtd/partitions/linksys,ns-partitions.yaml
new file mode 100644
index 000000000000..99249cdfbfb3
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/partitions/linksys,ns-partitions.yaml
@@ -0,0 +1,74 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mtd/partitions/linksys,ns-partitions.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Linksys Northstar partitioning
+
+description: |
+  Linksys devices based on Broadcom Northstar architecture often use two
+  firmware partitions. One is used for regular booting, the other is treated as
+  fallback.
+
+  This binding allows defining all fixed partitions and marking those containing
+  firmware. System can use that information e.g. for booting or flashing
+  purposes.
+
+maintainers:
+  - Rafał Miłecki <rafal@milecki.pl>
+
+properties:
+  compatible:
+    const: linksys,ns-partitions
+
+  "#address-cells":
+    enum: [ 1, 2 ]
+
+  "#size-cells":
+    enum: [ 1, 2 ]
+
+patternProperties:
+  "^partition@[0-9a-f]+$":
+    $ref: "partition.yaml#"
+    properties:
+      compatible:
+        items:
+          - const: linksys,ns-firmware
+          - const: brcm,trx
+    unevaluatedProperties: false
+
+required:
+  - "#address-cells"
+  - "#size-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    partitions {
+        compatible = "linksys,ns-partitions";
+        #address-cells = <1>;
+        #size-cells = <1>;
+
+        partition@0 {
+            label = "boot";
+            reg = <0x0 0x100000>;
+            read-only;
+        };
+
+        partition@100000 {
+            label = "nvram";
+            reg = <0x100000 0x100000>;
+        };
+
+        partition@200000 {
+            compatible = "linksys,ns-firmware", "brcm,trx";
+            reg = <0x200000 0xf00000>;
+        };
+
+        partition@1100000 {
+            compatible = "linksys,ns-firmware", "brcm,trx";
+            reg = <0x1100000 0xf00000>;
+        };
+    };
-- 
2.26.2

