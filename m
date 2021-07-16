Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4B86B3CB900
	for <lists+devicetree@lfdr.de>; Fri, 16 Jul 2021 16:45:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240468AbhGPOsO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jul 2021 10:48:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45950 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240395AbhGPOsN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jul 2021 10:48:13 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 570ECC06175F
        for <devicetree@vger.kernel.org>; Fri, 16 Jul 2021 07:45:18 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id a12so16372746lfb.7
        for <devicetree@vger.kernel.org>; Fri, 16 Jul 2021 07:45:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=phystech-edu.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=9qKQaa38uUzAtrRHZySBZsZbRwdj+bL+F1vWrPsxptw=;
        b=e7wyoU+Vz9DmsTYrM0+Gy2+cBjc+cllwFWfFVYo6DPLlObgy3aS4e+zD3W9lTdhfIl
         kbPxR8yV63XRbj79LNsYOiMdxLSb/FiKM9TGObfT9XtbF/Fm2prOA+jvwuJijkIfS3UX
         eLhjaofXbfpDlTE/jAYHoaDIn33R+fvfUSCXsDIt8pxceyIe0dW03yHmtxFU63DPcq7e
         E2ZfB5WBsSe+LRFGarXqYCJikp3t9dtO1I3ENfBDs+o/uR3KmJGxoOu5OrmB1wyc8MU6
         VQWbWD9CyF+wUn0p4sJ5paa/rYmCNOq/EF6ThINEctKXV75kpgMD/HJjFRvI6WfEOtar
         I8zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9qKQaa38uUzAtrRHZySBZsZbRwdj+bL+F1vWrPsxptw=;
        b=F/Dblysw2Ti7DR7ds5Me4Vl0AiuWVW2YLJuaN1im3s9GwlLVpnguaQuoHMjvwjs5Hj
         gzaoFfNr6Sepu1JvFooES/j+Egu4UQK/k9kGyMaBuh9gS/xLHitulGqAsPeWpAgVJpB5
         opoC9bkMXxcLajz4TMd8ly8zk/fdYJPi1HNwwBQojMDn4XLghW5i7DHRBXQ+Di2HS/sA
         7tUwDnu3lvJWyulNkbbvkxAr8A1RWd062jFtO5dZcBVKOqrkntudlTbDJLuTOU8skJuk
         dYxmi2f8thP1IHx7svbgHOCNXYJLJzqH/a6tlH7nEc7Bm2qdP8zlVPvXHx+b9LmICjFF
         Tosw==
X-Gm-Message-State: AOAM533n56djh90RRJhZ2lIR1Yn6UKzlp8WnfMorH00/7yNgm3K74SC1
        Nb+AZjOcFzL23RIbATWjo5GiGw==
X-Google-Smtp-Source: ABdhPJyrCzxQ65uTe+AJVSo8LBWBHOGGzKLt6AjQBslEjjFHVe3Wkq66P/4yUZT3tgvwoyZp0DrJZw==
X-Received: by 2002:a19:791b:: with SMTP id u27mr8027385lfc.101.1626446716670;
        Fri, 16 Jul 2021 07:45:16 -0700 (PDT)
Received: from 192.168.1.3 ([2a00:1370:810e:abfe:9c62:44e3:b0ab:76fd])
        by smtp.gmail.com with ESMTPSA id b6sm992327ljf.59.2021.07.16.07.45.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jul 2021 07:45:16 -0700 (PDT)
From:   Viktor Prutyanov <viktor.prutyanov@phystech.edu>
To:     sean@mess.org, mchehab@kernel.org, robh+dt@kernel.org,
        khilman@baylibre.com, narmstrong@baylibre.com
Cc:     jbrunet@baylibre.com, martin.blumenstingl@googlemail.com,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, rockosov@gmail.com,
        Viktor Prutyanov <viktor.prutyanov@phystech.edu>
Subject: [PATCH v6 1/2] media: rc: meson-ir-tx: document device tree bindings
Date:   Fri, 16 Jul 2021 17:45:07 +0300
Message-Id: <20210716144508.6058-2-viktor.prutyanov@phystech.edu>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210716144508.6058-1-viktor.prutyanov@phystech.edu>
References: <20210716144508.6058-1-viktor.prutyanov@phystech.edu>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds binding documentation for the IR transmitter
available in Amlogic Meson SoCs.

Signed-off-by: Viktor Prutyanov <viktor.prutyanov@phystech.edu>
---
 changes in v2:
   - compatible = "amlogic,meson-g12a-irblaster" added
   - clocks, clock-names and mod-clock updated
 changes in v3:
   - mod-clock removed
   - max-fifo-level added
 changes in v4:
   - irblaster -> ir-tx renaming
 changes in v5:
   - max-fifo-level -> amlogic,fifo-threshold (fifo-threshold
     == 128 - max-fifo-level)
   - amlogic,fifo-threshold becomes uint32 in range [0; 127]
 no changes in v6

 .../bindings/media/amlogic,meson-ir-tx.yaml   | 67 +++++++++++++++++++
 1 file changed, 67 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/amlogic,meson-ir-tx.yaml

diff --git a/Documentation/devicetree/bindings/media/amlogic,meson-ir-tx.yaml b/Documentation/devicetree/bindings/media/amlogic,meson-ir-tx.yaml
new file mode 100644
index 000000000000..88655413495d
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/amlogic,meson-ir-tx.yaml
@@ -0,0 +1,67 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/media/amlogic,meson-ir-tx.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Amlogic Meson IR transmitter
+
+maintainers:
+  - Viktor Prutyanov <viktor.prutyanov@phystech.edu>
+
+description: |
+  Some Amlogic SoCs such as A311D and T950D4 have IR transmitter
+  (also called blaster) controller onboard. It is capable of
+  sending IR signals with arbitrary carrier frequency and duty cycle.
+
+properties:
+  compatible:
+    oneOf:
+      - const: amlogic,meson-ir-tx
+      - items:
+          - const: amlogic,meson-g12a-ir-tx
+          - const: amlogic,meson-ir-tx
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: sysclk
+      - const: xtal
+
+  amlogic,fifo-threshold:
+    description: TX FIFO threshold
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 0
+    maximum: 127
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/clock/g12a-clkc.h>
+
+    ir@ff80014c {
+      compatible = "amlogic,meson-g12a-ir-tx", "amlogic,meson-ir-tx";
+      reg = <0xff80014c 0x10>;
+      interrupts = <0 198 IRQ_TYPE_EDGE_RISING>;
+      clocks = <&clkc CLKID_CLK81>, <&xtal>;
+      clock-names = "sysclk", "xtal";
+      amlogic,fifo-threshold = <32>;
+    };
-- 
2.21.0

