Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C9F5939550B
	for <lists+devicetree@lfdr.de>; Mon, 31 May 2021 07:24:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230032AbhEaF0R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 May 2021 01:26:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34746 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230172AbhEaF0O (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 May 2021 01:26:14 -0400
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com [IPv6:2607:f8b0:4864:20::1029])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4BB5C061760
        for <devicetree@vger.kernel.org>; Sun, 30 May 2021 22:24:33 -0700 (PDT)
Received: by mail-pj1-x1029.google.com with SMTP id h12-20020a17090aa88cb029016400fd8ad8so1274922pjq.3
        for <devicetree@vger.kernel.org>; Sun, 30 May 2021 22:24:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nigauri-org.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=sJkGz0A+2BB/fAV1CZ+h+SB2r4/BBf40Xmp4vms8ZNQ=;
        b=x9pDfOVOHD574O5NH2EjQMzh9FDBcPHDWjSQKHi/SElcpMhNShaDBmYjtZOHwunyvg
         GNDBCrfmhzkQWP2twb0MyKzeIoqbc6rR8LXDuipZ2goU5GnAjJ4gdjMoXrqRiN0xxAqN
         9c/hSejaGpB9IAFHIyXR3bmZMXJw89K1H9BAEOeT2rsArl69iGHEnNDJc6aGvEDGKRac
         oyC+wXCmvr0qPtvZ2TNDXSRdFWDsO6JPQ3LTzZFpNBDPfrUNdPW5KuP/GiH89A9NS4hq
         ysA3Wrz4HFYD41glw9soifUzv1nw9gNxDxDVlM7NB4Jhke2fS9Rkgo1EfF0BVzMSqzlL
         ajmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=sJkGz0A+2BB/fAV1CZ+h+SB2r4/BBf40Xmp4vms8ZNQ=;
        b=BxlFvGVFEPho/JfJBsZv+q1pKh8+Qut7AixKkiD8xEAaCAEfHFAcDJ6auQGIteAeCI
         7HRJaST6RQLlokyjOgccQnZsO0HJIIdjmORP6YAhc9PQ9H4MRbL6VFsX6eACPU3ow1SC
         mrR7bCEvkg8QGyJK7zBF6ltgWBzqiSLJ5hg9pIgDi+00j66O5C7M/5LznZTi79c4qgzi
         mFjixQlPnk2YS8VbnulPRiroLNL1aoAcOyAIceyE7mOBiV9IX2grW56yqf8wDKh7LdYw
         RdwBFGEuCuGjBFecLxUZ/JbfudepK3uEZAeT/eSA99aAFps8nYsRJX9uu58sRlphjTde
         /3HA==
X-Gm-Message-State: AOAM5318VQwavArLyyMl/4nwgE2zZ6z/NU3djiKRROn/tCDltkTC46rz
        oH+34gKIO0Dj8tFz1HQ31saK
X-Google-Smtp-Source: ABdhPJw6RhHSbs/iMCPiEY7+BYIcTUTNgkRH7Ghzps0/uGh/NKJJFScQzEyISZFjWzePCfRug5vDwQ==
X-Received: by 2002:a17:90a:7141:: with SMTP id g1mr17103812pjs.167.1622438673394;
        Sun, 30 May 2021 22:24:33 -0700 (PDT)
Received: from localhost ([2405:6581:5360:1800:7285:c2ff:fec2:8f97])
        by smtp.gmail.com with ESMTPSA id d22sm10425898pgb.15.2021.05.30.22.24.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 May 2021 22:24:32 -0700 (PDT)
From:   Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
To:     Alessandro Zummo <a.zummo@towertech.it>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>,
        Michal Simek <michal.simek@xilinx.com>
Cc:     linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
Subject: [PATCH] dt-bindings: rtc: zynqmp: convert bindings to YAML
Date:   Mon, 31 May 2021 14:24:26 +0900
Message-Id: <20210531052426.695576-1-iwamatsu@nigauri.org>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert Real Time Clock for Xilinx Zynq MPSoC SoC bindings documentation
to YAML schemas.

Signed-off-by: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
---
 .../bindings/rtc/xlnx,zynqmp-rtc.yaml         | 58 +++++++++++++++++++
 .../devicetree/bindings/rtc/xlnx-rtc.txt      | 25 --------
 2 files changed, 58 insertions(+), 25 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/rtc/xlnx,zynqmp-rtc.yaml
 delete mode 100644 Documentation/devicetree/bindings/rtc/xlnx-rtc.txt

diff --git a/Documentation/devicetree/bindings/rtc/xlnx,zynqmp-rtc.yaml b/Documentation/devicetree/bindings/rtc/xlnx,zynqmp-rtc.yaml
new file mode 100644
index 00000000000000..2785cf4d66b82c
--- /dev/null
+++ b/Documentation/devicetree/bindings/rtc/xlnx,zynqmp-rtc.yaml
@@ -0,0 +1,58 @@
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
+    #address-cells = <2>;
+    #size-cells = <2>;
+    rtc: rtc@ffa60000 {
+        compatible = "xlnx,zynqmp-rtc";
+        reg = <0x0 0xffa60000 0x0 0x100>;
+        interrupt-parent = <&gic>;
+        interrupts = <0 26 4>, <0 27 4>;
+        interrupt-names = "alarm", "sec";
+        calibration = <0x198233>;
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

