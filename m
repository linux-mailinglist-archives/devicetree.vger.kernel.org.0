Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 41D9939C48B
	for <lists+devicetree@lfdr.de>; Sat,  5 Jun 2021 02:39:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230527AbhFEAlI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Jun 2021 20:41:08 -0400
Received: from mail-pl1-f182.google.com ([209.85.214.182]:43586 "EHLO
        mail-pl1-f182.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230522AbhFEAlH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Jun 2021 20:41:07 -0400
Received: by mail-pl1-f182.google.com with SMTP id v12so5484335plo.10
        for <devicetree@vger.kernel.org>; Fri, 04 Jun 2021 17:39:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nigauri-org.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Npywn0HnEi7TokGQksP3F7Mehjp4DGkaDdu4QW8xtjA=;
        b=bt45kfpYiGzbTE/1td/xLlUt7LKFR4LXmmpKxKtgoqdGUy48MaGWFyot96fJGdmrUL
         CGMttKF+aNbkNU8CFGAxzw0QccgGPiKt0XyDjeWhux5KRkISmW1CHx/AhnYcmHJPl7xd
         wr3GEFCMzpI46krvTSVbZQ8YA+eJ4F75BNzsQzLy6RncwsTYo9mS3qbYxihK86C8B031
         UX4URS9pTnOlO0EYTqDo9f3BWZ/fMP8WJRVWRePJOkmYWPFemzsvfHlXSUUkGQ+5VlX9
         49qqMeBdef0pLrBN3MpqD1h38aaC/F6fynw+SMrwoqvkWQNrs/hO2Y4u5kzdh4UNChTn
         +BYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Npywn0HnEi7TokGQksP3F7Mehjp4DGkaDdu4QW8xtjA=;
        b=Tg/j1M6NLKijJKRMXe79NOEZDwwUWt7AEMbt1AlpyL8frW/NqBLD0FBHmtBtCKE1/d
         Y8sWM5FLKye3xSuEdSD54vTlE3NaGvmP5QvDpdtPmaXrLITA83BnYycTTuHMi114yyCM
         DaPSrhMs5kFAa/HWHdjNeQ+4TfT4pJj/pSkm2WxmATh5j4YoTeNmlMbblSOZd8HN3YK2
         1Z2k8bNEqnaeH0lPNRpIX1rfU1bW32zQAOGAgj5lSF2QqSKVT4VMdAFK1xSqwueQ0h5c
         HRVg8Ebb0iKqxzPFm2zV6RdnkUZbqglfyMMB7CqxcKUH5L7Rhl7lKixkAaIj1nZO0rC2
         QSxQ==
X-Gm-Message-State: AOAM532tJ+oXphm+si37thayADHdsywKcLo8tefGj8U7pVXjr/MrUhH7
        83po4USoBCdi2QblTF+wtXTy
X-Google-Smtp-Source: ABdhPJxGppuC2laUC+0tTTLXrJ36B6jsIS7Skz1eLJqLCjkoXIH3mzpnbSfyLPEczH0ewvYWge+3Jw==
X-Received: by 2002:a17:90a:6002:: with SMTP id y2mr20074659pji.197.1622853500758;
        Fri, 04 Jun 2021 17:38:20 -0700 (PDT)
Received: from localhost ([2405:6581:5360:1800:7285:c2ff:fec2:8f97])
        by smtp.gmail.com with ESMTPSA id t23sm3030909pgj.9.2021.06.04.17.38.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Jun 2021 17:38:20 -0700 (PDT)
From:   Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
To:     broonie@kernel.org, michal.simek@xilinx.com, robh+dt@kernel.org
Cc:     harinik@xilinx.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-spi@vger.kernel.org, Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
Subject: [PATCH v2] dt-bindings: spi: convert Cadence SPI bindings to YAML
Date:   Sat,  5 Jun 2021 09:38:11 +0900
Message-Id: <20210605003811.858676-1-iwamatsu@nigauri.org>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert spi for Cadence SPI bindings documentation to YAML.

Signed-off-by: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
---

 v2: Add ref and enum is-decoded-cs.
     Add ref to num-cs.

 .../devicetree/bindings/spi/spi-cadence.txt   | 30 ---------
 .../devicetree/bindings/spi/spi-cadence.yaml  | 66 +++++++++++++++++++
 2 files changed, 66 insertions(+), 30 deletions(-)
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
index 00000000000000..9787be21318e66
--- /dev/null
+++ b/Documentation/devicetree/bindings/spi/spi-cadence.yaml
@@ -0,0 +1,66 @@
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
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 1
+    maximum: 4
+    default: 4
+
+  is-decoded-cs:
+    description: |
+      Flag to indicate whether decoder is used or not.
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [ 0, 1 ]
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

