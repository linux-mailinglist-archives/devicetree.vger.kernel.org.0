Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 994482C4D94
	for <lists+devicetree@lfdr.de>; Thu, 26 Nov 2020 04:01:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729715AbgKZDAt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Nov 2020 22:00:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44230 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729679AbgKZDAs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 Nov 2020 22:00:48 -0500
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com [IPv6:2607:f8b0:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DCDB1C0613D4
        for <devicetree@vger.kernel.org>; Wed, 25 Nov 2020 19:00:48 -0800 (PST)
Received: by mail-pg1-x530.google.com with SMTP id s63so469127pgc.8
        for <devicetree@vger.kernel.org>; Wed, 25 Nov 2020 19:00:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=HGy6irohT0f1tWD/mm+Ymd5mnTZ2qIfD7SCUyRih0uQ=;
        b=EFPNSrhZhrvcg/8kPsEw0/6/KGCVTW/U4tL3dia9WRhqh8fktxXhEh0onyuuA4xEss
         JKt//yl3RnphApbznkwNRTAEi7+cmvsRtc7L7n4sy5hga6/qEfxRtF+8MH5B+8MObP2c
         Pxdvyz61EwO4TdO6DsnhPYd/1G4cLBBdS+qDL1PfkCH2yzam8qs24jVY69mLrXYFtUYy
         +kJ1IhYj8S3N8Qu/Z3mxjEWx+BdCWzERk+NwFL+Iwo9zYdYwtUfmZYGYr91ROsP9GLX9
         Y/lD95PTfUtMCVFbsYKsYyN9daXOuKSprQwoUbt/JlpSECcZKE7nl14scKVwfbcZB0uk
         A+HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=HGy6irohT0f1tWD/mm+Ymd5mnTZ2qIfD7SCUyRih0uQ=;
        b=NL/XD09Vn5ydIV0SvWdUXT19on3zlJc+wmonZm58pT38yz1c4cp4MNRGkgyOq8FnH8
         OKxHbM7nrJCxBkfUnOrtXBKkqRLk+qpFeNDJjk+1paLA33L/LybRijwxiQISghq+B3eh
         wFebyr0GHHD5arkS/Q4c9oMirfOu6ZS2mQvxcnI2wDH7sWtQEafyU/gY7cE2kM0Nr34Y
         KdJfE3dhmtXWj/yW9BJ37zdR1CYCQ8aHnCJpc5oP17AUWCNte5SokSzbBw0lgXnAZpep
         g97X65YRkD672TO9SmE+ssBRhYki7SenM1F/YpgAp8N08gREt9M9EWK1RZy0rxyaLTDG
         SGLg==
X-Gm-Message-State: AOAM531WLOG5zamap4jMQeZnq2KP4G4LYLk3koO+Ic2tVPkrViChWGE8
        pHTT2IDbnnJj+QVaN9SInnpLVQ==
X-Google-Smtp-Source: ABdhPJwg7TmxhRtsDO0z7BK3t08FW6TEtxmleXh8/VWrBOjgOOJgyhWVu/0QilTxqH1ENYkKsDoWzQ==
X-Received: by 2002:a17:90a:4889:: with SMTP id b9mr1038424pjh.79.1606359648430;
        Wed, 25 Nov 2020 19:00:48 -0800 (PST)
Received: from hsinchu02.internal.sifive.com (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
        by smtp.gmail.com with ESMTPSA id d2sm4322057pji.7.2020.11.25.19.00.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Nov 2020 19:00:47 -0800 (PST)
From:   Zong Li <zong.li@sifive.com>
To:     robh+dt@kernel.org, sboyd@kernel.org, mturquette@baylibre.com,
        palmer@dabbelt.com, paul.walmsley@sifive.com,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-kernel@vger.kernel.org
Cc:     Zong Li <zong.li@sifive.com>
Subject: [PATCH] dt-bindings: fu740: prci: add YAML documentation for the FU740 PRCI
Date:   Thu, 26 Nov 2020 11:00:43 +0800
Message-Id: <20201126030043.67390-1-zong.li@sifive.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add YAML DT binding documentation for the SiFive FU740 PRCI. The
link of unmatched board as follow, the U740-C000 manual would be present
in the same page later.

    https://www.sifive.com/boards/hifive-unmatched

Passes dt_binding_check.

Signed-off-by: Zong Li <zong.li@sifive.com>
---
 .../bindings/clock/sifive/fu740-prci.yaml     | 60 +++++++++++++++++++
 1 file changed, 60 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/sifive/fu740-prci.yaml

diff --git a/Documentation/devicetree/bindings/clock/sifive/fu740-prci.yaml b/Documentation/devicetree/bindings/clock/sifive/fu740-prci.yaml
new file mode 100644
index 000000000000..e17143cac316
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/sifive/fu740-prci.yaml
@@ -0,0 +1,60 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+# Copyright (C) 2020 SiFive, Inc.
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/sifive/fu740-prci.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: SiFive FU740 Power Reset Clock Interrupt Controller (PRCI)
+
+maintainers:
+  - Zong Li <zong.li@sifive.com>
+  - Paul Walmsley  <paul.walmsley@sifive.com>
+
+description:
+  On the FU740 family of SoCs, most system-wide clock and reset integration
+  is via the PRCI IP block.
+  The clock consumer should specify the desired clock via the clock ID
+  macros defined in include/dt-bindings/clock/sifive-fu740-prci.h.
+  These macros begin with PRCI_CLK_.
+
+  The hfclk and rtcclk nodes are required, and represent physical
+  crystals or resonators located on the PCB.  These nodes should be present
+  underneath /, rather than /soc.
+
+properties:
+  compatible:
+    const: sifive,fu740-c000-prci
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: high frequency clock.
+      - description: RTL clock.
+
+  clock-names:
+    items:
+      - const: hfclk
+      - const: rtcclk
+
+  "#clock-cells":
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - "#clock-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    prci: clock-controller@10000000 {
+      compatible = "sifive,fu740-c000-prci";
+      reg = <0x10000000 0x1000>;
+      clocks = <&hfclk>, <&rtcclk>;
+      #clock-cells = <1>;
+    };
-- 
2.29.2

