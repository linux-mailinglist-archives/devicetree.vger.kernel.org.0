Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AC49AB6216
	for <lists+devicetree@lfdr.de>; Wed, 18 Sep 2019 13:10:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729893AbfIRLKB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Sep 2019 07:10:01 -0400
Received: from mail-pg1-f196.google.com ([209.85.215.196]:41749 "EHLO
        mail-pg1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729340AbfIRLKB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Sep 2019 07:10:01 -0400
Received: by mail-pg1-f196.google.com with SMTP id x15so3851708pgg.8
        for <devicetree@vger.kernel.org>; Wed, 18 Sep 2019 04:10:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=TIBonrAou/kqYBGJ3D/jipopO+euPWjTtxCKgGWeHV4=;
        b=nDUBvcRNoOHsnq/ANJ7DlJa95TZhwrU9I/02wwIaxgLKbyXRG4SlfJFWJ/mjhv1zZE
         F0fnFmn4Yh/fhCYdDKT9XsHtPqttwIZDKfXRUZFcCtQKOie+yCKHdPHPblvL8AgUYOjb
         TBmG6nLD1nyykmFcficCKja40OqTpsxenET3AJS2x2S1+6SR3M9v/TpKDNiKF6nfYhAQ
         7lNzvt4Jj6jXzDndcArdYASBwXVQl7ATPvE+3eH7NyB765cP+0tUkT4/BzC0jSmD72va
         TxL8rVFWScalSq3PX8BIcxAFBkBV640HuYdY7+sdff5WmSLk7odwR0X9lWNoNHaXOKXF
         q47g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=TIBonrAou/kqYBGJ3D/jipopO+euPWjTtxCKgGWeHV4=;
        b=dDvWszoQCOiVRZ6rbrjy9pbjZyh+znUwrr2U0Wkoqt5Usis0IZb70WXGr6nRyEiFoI
         Wi4oddVnY3XMc9Q7ml+mxnKrG0k+4fFw0ETLYSNiG4cJXd4ivnXE3ICqfZisx5GB/FHf
         3IpX/4VdNH7WDxLHu+IdulJD0o+8/9VUzBmOoGj1RD3vJtmrL96JFVVpRr7ESj/kQP27
         BN9CnArpUjQv02I6XCziG7r3hFa8jd9ylKdjqfrw714+EE8HMxbPZe/rElZpdLF9cHKF
         6clIwjBr8f36XYMbj5MV5XCb3af1wnkW2M9PV6jYcgdLmsTk8kn2dlIyop0LwLGjnNiD
         kiEg==
X-Gm-Message-State: APjAAAUhShnYzpPj+Wk0qVVAZ1EFIhLm3nXkrjD3zBORFIrD41n02I5m
        pYzM+8Hqg3ETiKoF9Gec1CctHQ==
X-Google-Smtp-Source: APXvYqyqxL5VeS9eLWRFaS7Glza3we5w7+0Qxt6B/uLgCy5YxfhDZUXsl4qiWi8BATH8D6ztv33biQ==
X-Received: by 2002:a65:648b:: with SMTP id e11mr3257766pgv.2.1568804999960;
        Wed, 18 Sep 2019 04:09:59 -0700 (PDT)
Received: from pragneshp.open-silicon.com ([114.143.65.226])
        by smtp.gmail.com with ESMTPSA id x125sm7256738pfb.93.2019.09.18.04.09.56
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 18 Sep 2019 04:09:59 -0700 (PDT)
From:   Pragnesh Patel <pragnesh.patel@sifive.com>
To:     palmer@sifive.com, paul.walmsley@sifive.com
Cc:     Pragnesh Patel <pragnesh.patel@sifive.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>, linux-spi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2] spi: dt-bindings: Convert spi-sifive binding to json-schema
Date:   Wed, 18 Sep 2019 16:38:39 +0530
Message-Id: <1568804927-13565-1-git-send-email-pragnesh.patel@sifive.com>
X-Mailer: git-send-email 2.7.4
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the spi-sifive binding to DT schema format.

Signed-off-by: Pragnesh Patel <pragnesh.patel@sifive.com>
---

Changes in v2:
- Remove address-cells and size-cells property
- Added valid values for sifive,fifo-depth and sifive,max-bits-per-word
  property

 .../devicetree/bindings/spi/spi-sifive.txt         | 37 ----------
 .../devicetree/bindings/spi/spi-sifive.yaml        | 86 ++++++++++++++++++++++
 2 files changed, 86 insertions(+), 37 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/spi/spi-sifive.txt
 create mode 100644 Documentation/devicetree/bindings/spi/spi-sifive.yaml

diff --git a/Documentation/devicetree/bindings/spi/spi-sifive.txt b/Documentation/devicetree/bindings/spi/spi-sifive.txt
deleted file mode 100644
index 3f5c6e4..0000000
--- a/Documentation/devicetree/bindings/spi/spi-sifive.txt
+++ /dev/null
@@ -1,37 +0,0 @@
-SiFive SPI controller Device Tree Bindings
-------------------------------------------
-
-Required properties:
-- compatible		: Should be "sifive,<chip>-spi" and "sifive,spi<version>".
-			  Supported compatible strings are:
-			  "sifive,fu540-c000-spi" for the SiFive SPI v0 as integrated
-			  onto the SiFive FU540 chip, and "sifive,spi0" for the SiFive
-			  SPI v0 IP block with no chip integration tweaks.
-			  Please refer to sifive-blocks-ip-versioning.txt for details
-- reg			: Physical base address and size of SPI registers map
-			  A second (optional) range can indicate memory mapped flash
-- interrupts		: Must contain one entry
-- interrupt-parent	: Must be core interrupt controller
-- clocks		: Must reference the frequency given to the controller
-- #address-cells	: Must be '1', indicating which CS to use
-- #size-cells		: Must be '0'
-
-Optional properties:
-- sifive,fifo-depth		: Depth of hardware queues; defaults to 8
-- sifive,max-bits-per-word	: Maximum bits per word; defaults to 8
-
-SPI RTL that corresponds to the IP block version numbers can be found here:
-https://github.com/sifive/sifive-blocks/tree/master/src/main/scala/devices/spi
-
-Example:
-	spi: spi@10040000 {
-		compatible = "sifive,fu540-c000-spi", "sifive,spi0";
-		reg = <0x0 0x10040000 0x0 0x1000 0x0 0x20000000 0x0 0x10000000>;
-		interrupt-parent = <&plic>;
-		interrupts = <51>;
-		clocks = <&tlclk>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-		sifive,fifo-depth = <8>;
-		sifive,max-bits-per-word = <8>;
-	};
diff --git a/Documentation/devicetree/bindings/spi/spi-sifive.yaml b/Documentation/devicetree/bindings/spi/spi-sifive.yaml
new file mode 100644
index 0000000..140e435
--- /dev/null
+++ b/Documentation/devicetree/bindings/spi/spi-sifive.yaml
@@ -0,0 +1,86 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/spi/spi-sifive.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: SiFive SPI controller
+
+maintainers:
+  - Pragnesh Patel <pragnesh.patel@sifive.com>
+  - Paul Walmsley  <paul.walmsley@sifive.com>
+  - Palmer Dabbelt <palmer@sifive.com>
+
+allOf:
+  - $ref: "spi-controller.yaml#"
+
+properties:
+  compatible:
+    items:
+      - const: sifive,fu540-c000-spi
+      - const: sifive,spi0
+
+    description:
+      Should be "sifive,<chip>-spi" and "sifive,spi<version>".
+      Supported compatible strings are -
+      "sifive,fu540-c000-spi" for the SiFive SPI v0 as integrated
+      onto the SiFive FU540 chip, and "sifive,spi0" for the SiFive
+      SPI v0 IP block with no chip integration tweaks.
+      Please refer to sifive-blocks-ip-versioning.txt for details
+
+      SPI RTL that corresponds to the IP block version numbers can be found here -
+      https://github.com/sifive/sifive-blocks/tree/master/src/main/scala/devices/spi
+
+  reg:
+    maxItems: 1
+
+    description:
+      Physical base address and size of SPI registers map
+      A second (optional) range can indicate memory mapped flash
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+    description:
+      Must reference the frequency given to the controller
+
+  sifive,fifo-depth:
+    description:
+      Depth of hardware queues; defaults to 8
+    allOf:
+      - $ref: "/schemas/types.yaml#/definitions/uint32"
+      - enum: [ 8 ]
+      - default: 8
+
+  sifive,max-bits-per-word:
+    description:
+      Maximum bits per word; defaults to 8
+    allOf:
+      - $ref: "/schemas/types.yaml#/definitions/uint32"
+      - enum: [ 0, 1, 2, 3, 4, 5, 6, 7, 8 ]
+      - default: 8
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+
+examples:
+  - |
+    spi: spi@10040000 {
+      compatible = "sifive,fu540-c000-spi", "sifive,spi0";
+      reg = <0x0 0x10040000 0x0 0x1000 0x0 0x20000000 0x0 0x10000000>;
+      interrupt-parent = <&plic>;
+      interrupts = <51>;
+      clocks = <&tlclk>;
+      #address-cells = <1>;
+      #size-cells = <0>;
+      sifive,fifo-depth = <8>;
+      sifive,max-bits-per-word = <8>;
+    };
+
+...
-- 
2.7.4

