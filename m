Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 38FE940AB5F
	for <lists+devicetree@lfdr.de>; Tue, 14 Sep 2021 12:04:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230359AbhINKFm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Sep 2021 06:05:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60662 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230045AbhINKFm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Sep 2021 06:05:42 -0400
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E43EC061574
        for <devicetree@vger.kernel.org>; Tue, 14 Sep 2021 03:04:25 -0700 (PDT)
Received: by mail-pj1-x102b.google.com with SMTP id j1so8476164pjv.3
        for <devicetree@vger.kernel.org>; Tue, 14 Sep 2021 03:04:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=KCtvujwOhok5kSxQj+KzouqiVUVy5jYTWpWg3/YjBhw=;
        b=qI7UFfAd9gT9HX4gx5WI0QIU16IruNCOAh603JoE+0MinA53YtAK/mA/kPASgPkNF5
         jr6P3ZRA4znm9fwYarhtsYmVTHNjG957ndbiCVACkHRYPUP+154rQT7+fTgZdZQIR3to
         zSji+B/ix71b9zTIScDC3A1p6iUqsOy9OpKVo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=KCtvujwOhok5kSxQj+KzouqiVUVy5jYTWpWg3/YjBhw=;
        b=fRuOkfA9My8NiraLXLi1mDjz0hEdnpJMD2clO0tJmKT36s/ta+wYqweRMMbH+YBLIC
         R9cIzqyQv/meYdHosfBMGTJIibhh3s8YbhPiJth/k6a5nRctufU2ctPA7uFsTyiQ1zA9
         wPMGznoUmQQvvh4TCx8heMXSCylyqCDbSElZzoeAYZ72x0ZCV3kGWblYINEmkJTAKmBr
         YNI8k3em/X1QFB/yg5tut+9IOWZygfArm2/8fnErB7jWXvFAlKHyqm5XY6eiQyfB1R2X
         OFtHjau///HMinUKUeI8nMoov42wxqE1A9sDfFzAKHdVPVLq7TnCxVgZm3RUk8g+6E2o
         p5Tw==
X-Gm-Message-State: AOAM532iLrIAaGB1Qg8BEbeJyvdSXJhVGwBDj/zqZNlnpCwlr0wniKSj
        Yo9GxPlIb6jvtBkslFC1xiwj6YaAyWdWxg==
X-Google-Smtp-Source: ABdhPJw9iIKtgoHvSkRwEB73nLz3TWzHd2se6aSAVAwYhii6CrkTf9cKu1gEm0jOD7cY76J0KB/Ukg==
X-Received: by 2002:a17:90b:4f49:: with SMTP id pj9mr1181702pjb.188.1631613864520;
        Tue, 14 Sep 2021 03:04:24 -0700 (PDT)
Received: from shiro.work (p864106-ipngn200510sizuokaden.shizuoka.ocn.ne.jp. [180.9.58.106])
        by smtp.googlemail.com with ESMTPSA id b5sm1193140pjq.2.2021.09.14.03.04.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Sep 2021 03:04:24 -0700 (PDT)
From:   Daniel Palmer <daniel@0x0f.com>
To:     devicetree@vger.kernel.org, robh+dt@kernel.org, maz@kernel.org,
        tglx@linutronix.de
Cc:     linux-arm-kernel@lists.infradead.org, romain.perier@gmail.com,
        Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH 1/3] dt-bindings: interrupt-controller: Add SigmaStar SSD20xD gpi
Date:   Tue, 14 Sep 2021 19:04:13 +0900
Message-Id: <20210914100415.1549208-2-daniel@0x0f.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210914100415.1549208-1-daniel@0x0f.com>
References: <20210914100415.1549208-1-daniel@0x0f.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a binding description for the SigmaStar GPIO interrupt
controller, gpi, found on the SSD201 and SSD202D.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 .../sstar,ssd20xd-gpi.yaml                    | 53 +++++++++++++++++++
 MAINTAINERS                                   |  1 +
 2 files changed, 54 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/sstar,ssd20xd-gpi.yaml

diff --git a/Documentation/devicetree/bindings/interrupt-controller/sstar,ssd20xd-gpi.yaml b/Documentation/devicetree/bindings/interrupt-controller/sstar,ssd20xd-gpi.yaml
new file mode 100644
index 000000000000..1f7e6c5fef52
--- /dev/null
+++ b/Documentation/devicetree/bindings/interrupt-controller/sstar,ssd20xd-gpi.yaml
@@ -0,0 +1,53 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/interrupt-controller/sstar,ssd20xd-gpi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: SigmaStar GPIO Interrupt Controller
+
+maintainers:
+  - Daniel Palmer <daniel@thingy.jp>
+
+description: |+
+  Newer SigmaStar SoCs from the SSD201/SSD202D have an extra
+  interrupt controller that is just for handling interrupts
+  on GPIOs and then routing a single interrupt to the peripheral
+  interrupt controller instead of only having a few interrupt
+  capable GPIOs that are routed directly to the peripheral
+  interrupt controller like older SoCs.
+
+properties:
+  compatible:
+    const: sstar,ssd20xd-gpi
+
+  interrupt-controller: true
+
+  "#interrupt-cells":
+    const: 2
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    interrupt-controller@207a00 {
+      compatible = "sstar,ssd20xd-gpi";
+      reg = <0x207a00 0x200>;
+      #interrupt-cells = <2>;
+      interrupt-controller;
+      interrupts-extended = <&intc_irq GIC_SPI 56 IRQ_TYPE_LEVEL_HIGH>;
+    };
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index eeb4c70b3d5b..3004c0f735b6 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2243,6 +2243,7 @@ T:	git git://github.com/linux-chenxing/linux.git
 F:	Documentation/devicetree/bindings/arm/mstar/*
 F:	Documentation/devicetree/bindings/clock/mstar,msc313-mpll.yaml
 F:	Documentation/devicetree/bindings/gpio/mstar,msc313-gpio.yaml
+F:	Documentation/devicetree/bindings/interrupt-controller/sstar,ssd20xd-gpi.yaml
 F:	arch/arm/boot/dts/mstar-*
 F:	arch/arm/mach-mstar/
 F:	drivers/clk/mstar/
-- 
2.33.0

