Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3AFE93963B6
	for <lists+devicetree@lfdr.de>; Mon, 31 May 2021 17:30:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234271AbhEaPbn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 May 2021 11:31:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54784 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234392AbhEaPZc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 May 2021 11:25:32 -0400
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 128A4C043446
        for <devicetree@vger.kernel.org>; Mon, 31 May 2021 07:15:43 -0700 (PDT)
Received: by mail-pj1-x1035.google.com with SMTP id l10-20020a17090a150ab0290162974722f2so59121pja.2
        for <devicetree@vger.kernel.org>; Mon, 31 May 2021 07:15:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nigauri-org.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=uusjoI9979v1pbLqldEYIkX8H2lrvgglLvoW87oRlIw=;
        b=GG4xCYlmpXHc9owVweFw1MlfjhetkfkHGQvpNlAQcwNDM6WdV0akk4Gc8nqFcgfOBM
         eR8PyLnQDmnrR3tCAyZt4pLadiRKtAK2QOMEcfsHunZWOg1ZkBDaYbcFXMZ6ZsRE9DgE
         iWJDErwKg71ftjOoikFj1/5qzrK6JKw/PQW57R/DaB2oSzxAW1LBw6eSNANS21Sk/unj
         3KtALWLdlUc3vitPyjhuiQxitwhQvZYXXkksXfJa4YbnV2afFKL8XkC5vUYVXCvW4IY4
         f/90/5HT9dy1puAE6tMGTuvvY1MEH69aadXV53J8/921ufGZYNwdeLpEeQR5V2ypY3NI
         KhqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=uusjoI9979v1pbLqldEYIkX8H2lrvgglLvoW87oRlIw=;
        b=jS/nYRM9tjXONs2uqsZMzA129BkTw74s2R+SWrF5zhIyIwk/jIitDMydT1hwe3+cu2
         1QTEQI8R40hzCJj2/uUXDc5yLOv8G58yJgL84OWkbIRHmtHakAk3IC94mkc7IN/jE9iq
         LLf3AqMx1Erto7spdX/3Pqbn6IjC4IwaJ7EKnsjz1y+C5GRqba2VNkfyzMBv9MlCHcY+
         pXMzCI6MBzHN6936zQK0/tne4nAwJzKHD92ddu7q+ueSajjOSk60BjSyuI8ZaDHGO8tY
         kBygoI8r7JTrZ6XyqAd4DEyioQMMmDReRzM3btDK4LU9RdIRRajfjQMaIVSXdFJwXBZl
         Auqg==
X-Gm-Message-State: AOAM532I9RHlO30DfYA9QXZfioq4/mnsRZ46WV4jIx+VuPAaMEOd115q
        mq6DSCG+nlaRsZvDXZvyOSVb
X-Google-Smtp-Source: ABdhPJyqhZTIi030YGA5BmhjsNzclYh89CN4yKsyoGmPMTBP4RYkN9dcT6zmYrIL3nwREUDCs39qmQ==
X-Received: by 2002:a17:902:c406:b029:ef:7ba2:f308 with SMTP id k6-20020a170902c406b02900ef7ba2f308mr20965460plk.9.1622470542580;
        Mon, 31 May 2021 07:15:42 -0700 (PDT)
Received: from localhost ([2405:6581:5360:1800:7285:c2ff:fec2:8f97])
        by smtp.gmail.com with ESMTPSA id m2sm1370557pjf.24.2021.05.31.07.15.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 May 2021 07:15:42 -0700 (PDT)
From:   Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
To:     Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Michal Simek <michal.simek@xilinx.com>
Cc:     linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Harini Katakam <harinik@xilinx.com>,
        linux-arm-kernel@lists.infradead.org,
        Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
Subject: [PATCH] dt-bindings: spi: convert Cadence SPI bindings to YAML
Date:   Mon, 31 May 2021 23:15:38 +0900
Message-Id: <20210531141538.721613-1-iwamatsu@nigauri.org>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert spi for Cadence SPI bindings documentation to YAML.

Signed-off-by: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
---
 .../devicetree/bindings/spi/spi-cadence.txt   | 30 ---------
 .../devicetree/bindings/spi/spi-cadence.yaml  | 63 +++++++++++++++++++
 2 files changed, 63 insertions(+), 30 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/spi/spi-cadence.txt
 create mode 100644 Documentation/devicetree/bindings/spi/spi-cadence.yaml

diff --git a/Documentation/devicetree/bindings/spi/spi-cadence.txt b/Documentation/devicetree/bindings/spi/spi-cadence.txt
deleted file mode 100644
index 05a2ef945664be..00000000000000
--- a/Documentation/devicetree/bindings/spi/spi-cadence.txt
+++ /dev/null
@@ -1,30 +0,0 @@
-Cadence SPI controller Device Tree Bindings
--------------------------------------------
-
-Required properties:
-- compatible		: Should be "cdns,spi-r1p6" or "xlnx,zynq-spi-r1p6".
-- reg			: Physical base address and size of SPI registers map.
-- interrupts		: Property with a value describing the interrupt
-			  number.
-- clock-names		: List of input clock names - "ref_clk", "pclk"
-			  (See clock bindings for details).
-- clocks		: Clock phandles (see clock bindings for details).
-
-Optional properties:
-- num-cs		: Number of chip selects used.
-			  If a decoder is used, this will be the number of
-			  chip selects after the decoder.
-- is-decoded-cs		: Flag to indicate whether decoder is used or not.
-
-Example:
-
-	spi@e0007000 {
-		compatible = "xlnx,zynq-spi-r1p6";
-		clock-names = "ref_clk", "pclk";
-		clocks = <&clkc 26>, <&clkc 35>;
-		interrupt-parent = <&intc>;
-		interrupts = <0 49 4>;
-		num-cs = <4>;
-		is-decoded-cs = <0>;
-		reg = <0xe0007000 0x1000>;
-	} ;
diff --git a/Documentation/devicetree/bindings/spi/spi-cadence.yaml b/Documentation/devicetree/bindings/spi/spi-cadence.yaml
new file mode 100644
index 00000000000000..27a7121ed0f9ae
--- /dev/null
+++ b/Documentation/devicetree/bindings/spi/spi-cadence.yaml
@@ -0,0 +1,63 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/spi/spi-cadence.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Cadence SPI controller Device Tree Bindings
+
+maintainers:
+  - Michal Simek <michal.simek@xilinx.com>
+
+allOf:
+  - $ref: "spi-controller.yaml#"
+
+properties:
+  compatible:
+    enum:
+      - cdns,spi-r1p6
+      - xlnx,zynq-spi-r1p6
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: ref_clk
+      - const: pclk
+
+  clocks:
+    maxItems: 2
+
+  num-cs:
+    description: |
+      Number of chip selects used. If a decoder is used,
+      this will be the number of chip selects after the
+      decoder.
+    minimum: 1
+    maximum: 4
+    default: 4
+
+  is-decoded-cs:
+    description: |
+      Flag to indicate whether decoder is used or not.
+    default: 0
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    spi@e0007000 {
+      compatible = "xlnx,zynq-spi-r1p6";
+      clock-names = "ref_clk", "pclk";
+      clocks = <&clkc 26>, <&clkc 35>;
+      interrupt-parent = <&intc>;
+      interrupts = <0 49 4>;
+      num-cs = <4>;
+      is-decoded-cs = <0>;
+      reg = <0xe0007000 0x1000>;
+    };
+...
-- 
2.30.0

