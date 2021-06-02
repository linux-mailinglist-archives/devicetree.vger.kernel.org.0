Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 99907397D75
	for <lists+devicetree@lfdr.de>; Wed,  2 Jun 2021 02:09:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235250AbhFBALL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Jun 2021 20:11:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43466 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235217AbhFBALL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Jun 2021 20:11:11 -0400
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com [IPv6:2607:f8b0:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C678C061574
        for <devicetree@vger.kernel.org>; Tue,  1 Jun 2021 17:09:29 -0700 (PDT)
Received: by mail-pf1-x429.google.com with SMTP id x73so775176pfc.8
        for <devicetree@vger.kernel.org>; Tue, 01 Jun 2021 17:09:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nigauri-org.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=SewYCBxsOofZiuwfebP8X77TE8COIIBaxRrr8ugrpik=;
        b=qS1udX5nInWSMLSDev+HovsM06ZzqDj/N9V+Hugeqt2Gdvrvw74S/GbOxr1n8K1H6V
         DPwtOFm9qixftJgrbyvcQtS6ivnCpltliXyQpaw2RUCsBVDHKs9A8HOedtWLPxquVPvF
         fKiHf3j8kupGXz7Eon4GaWMyl6CdYywIMObkeyjFjjXlhZ4VjvJftCb6uv9j1NhFBuxX
         zujB3dZUgCKdPwNfrdumATrOvKqXu3zPYnkVEwRUdYhMJ9F0pOFzBpZqXXd+IRu28XI5
         S9p6DQEHM2xkKI1L8KFZjRGcZqvMEQyiqNAuZk0cpSYy49hQD+cI6xiVS+fdXRqKVnWw
         U3Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=SewYCBxsOofZiuwfebP8X77TE8COIIBaxRrr8ugrpik=;
        b=bHWeJxZLc4Ch3EAnAf4xYn+wUdGAiLBjurCqQebA27QC+joXmCyyBRReCcToJQ4JUi
         7b72G1Ej2Cwtl/jvrdxQnjke5NmLrLOwBKUSooAtPzz6JDmyTxrRmTi7ufypgqAHVa0N
         d3dd/78Az3dxsYYiKJvpcv1Qto3zSSTJn1+aidX+Fdwt5oUsO3CLiY8A3Mg8CtVgEIxX
         vc9wkQ61Pdt5ECDSH3C7qhRTXHySxWy++j/CgVWRvXzJoeNW5Vc1tIHe9GfY5xEpLl9k
         xTiTDpMzvBPyBlmLclDdVokZUYf+5QaMj1FfZHjNa4zpYVHnQPFUgvhYXh0Aa6IJ6feE
         WydQ==
X-Gm-Message-State: AOAM530FoPZVPQcvWTKKg1CzmBel0v5NxDuLDeud0Eo/mlO4e0cCgINd
        MNUi7XfAyNVzITJwxoz2Pr0j
X-Google-Smtp-Source: ABdhPJztiFHguYjaFCrqyYrBDhGjYl0+M1zClWGFL/TD0R0smaFF9tZtN0JUy4aQj/K4eKZIqmeC9Q==
X-Received: by 2002:a63:1555:: with SMTP id 21mr19197504pgv.169.1622592568880;
        Tue, 01 Jun 2021 17:09:28 -0700 (PDT)
Received: from localhost ([2405:6581:5360:1800:7285:c2ff:fec2:8f97])
        by smtp.gmail.com with ESMTPSA id x125sm10088479pfx.201.2021.06.01.17.09.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jun 2021 17:09:28 -0700 (PDT)
From:   Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
To:     Alessandro Zummo <a.zummo@towertech.it>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>,
        Michal Simek <michal.simek@xilinx.com>
Cc:     linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
Subject: [PATCH v2] dt-bindings: rtc: zynqmp: convert bindings to YAML
Date:   Wed,  2 Jun 2021 09:09:18 +0900
Message-Id: <20210602000918.779983-1-iwamatsu@nigauri.org>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert Real Time Clock for Xilinx Zynq MPSoC SoC bindings documentation
to YAML schemas.
And this renamed the file to compatible string of DT.

Signed-off-by: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
---

v2: Fix warning with DT_CHECKER_FLAGS=-m

 .../bindings/rtc/xlnx,zynqmp-rtc.yaml         | 61 +++++++++++++++++++
 .../devicetree/bindings/rtc/xlnx-rtc.txt      | 25 --------
 2 files changed, 61 insertions(+), 25 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/rtc/xlnx,zynqmp-rtc.yaml
 delete mode 100644 Documentation/devicetree/bindings/rtc/xlnx-rtc.txt

diff --git a/Documentation/devicetree/bindings/rtc/xlnx,zynqmp-rtc.yaml b/Documentation/devicetree/bindings/rtc/xlnx,zynqmp-rtc.yaml
new file mode 100644
index 00000000000000..c205cb86ef00be
--- /dev/null
+++ b/Documentation/devicetree/bindings/rtc/xlnx,zynqmp-rtc.yaml
@@ -0,0 +1,61 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/rtc/xlnx,zynqmp-rtc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Xilinx Zynq Ultrascale+ MPSoC Real Time Clock
+
+description: |
+  RTC controller for the Xilinx Zynq MPSoC Real Time Clock.
+  This separates IRQ lines for seconds and alarm.
+
+maintainers:
+  - Michal Simek <michal.simek@xilinx.com>
+
+allOf:
+  - $ref: rtc.yaml#
+
+properties:
+  compatible:
+    const: xlnx,zynqmp-rtc
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    minItems: 2
+
+  interrupt-names:
+    items:
+      - const: alarm
+      - const: sec
+
+  calibration:
+    description: |
+      calibration value for 1 sec period which will
+      be programmed directly to calibration register.
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - interrupt-names
+
+additionalProperties: false
+
+examples:
+  - |
+    soc {
+      #address-cells = <2>;
+      #size-cells = <2>;
+
+      rtc: rtc@ffa60000 {
+        compatible = "xlnx,zynqmp-rtc";
+        reg = <0x0 0xffa60000 0x0 0x100>;
+        interrupt-parent = <&gic>;
+        interrupts = <0 26 4>, <0 27 4>;
+        interrupt-names = "alarm", "sec";
+        calibration = <0x198233>;
+      };
+    };
diff --git a/Documentation/devicetree/bindings/rtc/xlnx-rtc.txt b/Documentation/devicetree/bindings/rtc/xlnx-rtc.txt
deleted file mode 100644
index 0df6f016b1b771..00000000000000
--- a/Documentation/devicetree/bindings/rtc/xlnx-rtc.txt
+++ /dev/null
@@ -1,25 +0,0 @@
-* Xilinx Zynq Ultrascale+ MPSoC Real Time Clock
-
-RTC controller for the Xilinx Zynq MPSoC Real Time Clock
-Separate IRQ lines for seconds and alarm
-
-Required properties:
-- compatible: Should be "xlnx,zynqmp-rtc"
-- reg: Physical base address of the controller and length
-       of memory mapped region.
-- interrupts: IRQ lines for the RTC.
-- interrupt-names: interrupt line names eg. "sec" "alarm"
-
-Optional:
-- calibration: calibration value for 1 sec period which will
-		be programmed directly to calibration register
-
-Example:
-rtc: rtc@ffa60000 {
-	compatible = "xlnx,zynqmp-rtc";
-	reg = <0x0 0xffa60000 0x100>;
-	interrupt-parent = <&gic>;
-	interrupts = <0 26 4>, <0 27 4>;
-	interrupt-names = "alarm", "sec";
-	calibration = <0x198233>;
-};
-- 
2.30.0

