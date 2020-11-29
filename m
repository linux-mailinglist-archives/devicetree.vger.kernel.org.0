Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CF5832C78B9
	for <lists+devicetree@lfdr.de>; Sun, 29 Nov 2020 12:09:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727305AbgK2LJn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 29 Nov 2020 06:09:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50354 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727332AbgK2LJl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 29 Nov 2020 06:09:41 -0500
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com [IPv6:2607:f8b0:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA7EBC061A48
        for <devicetree@vger.kernel.org>; Sun, 29 Nov 2020 03:08:19 -0800 (PST)
Received: by mail-pg1-x535.google.com with SMTP id m9so8066878pgb.4
        for <devicetree@vger.kernel.org>; Sun, 29 Nov 2020 03:08:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=m3CLQN+ezeIxnbMRaBRw4YQenTKKZRkGSbveTTi9L6A=;
        b=tKakT/Gi981eqCPGuBJFPcI6EcUbr1Y2VzccCCP+ADnzJqroljWwLuBe8XR9S+Y7Np
         3SFJMUrOgH7JqJKg3kc/KlQwg7yd0V3R28MFfrSVDbvJgbUAubsoUcMMcGrsypSrEfDY
         VW0mRaR0fvAyyI/m1TAOKDqBBBz5DZgJCrIEo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=m3CLQN+ezeIxnbMRaBRw4YQenTKKZRkGSbveTTi9L6A=;
        b=bund227/XTm6pXL6pKizsYVcfn9JYmyggkAbSGB9B+hnQry64+e166BUPADkh+Ru71
         G1npQKa0gMvYBEy6mJo+RRxJq9rpY/9r6mYwbF/Zp59tvqbVCIiHhbiKShBI4uOPOTWa
         d5oHYRx4vJGthWlp2Y3XcAPbGmy/oM4wpFhNrltBD9sVZAGy0raopiePmPzi13EoHxHK
         vA11sHC5Ogxd4K/CcydNUpJ6ifYwB+UY2FvTLdk1QBuiXQSGZD2SSvVRZEHo8HfGEmkt
         wymPwIu1BrGseETP8IsLDo6ZGC2JvBxoUkh+PDaEq7Uau9haB1n6sM4mxmq3uNRHDwK/
         6fwA==
X-Gm-Message-State: AOAM533adEi8JOxrX6ZNnS3qPIFlm3EPkAnOcCfBJJA23NRswqXNNjS9
        qee1P8JI+cnK8SkM2Cy+lqXwdg==
X-Google-Smtp-Source: ABdhPJw9O/+Bnbpyka7o6mMKKMIxJQacADxuTHuFzjU6ocHHZU1ilPkY2XOtLZdg8FugIYAfUZQn/g==
X-Received: by 2002:a17:90a:5901:: with SMTP id k1mr20203212pji.7.1606648098954;
        Sun, 29 Nov 2020 03:08:18 -0800 (PST)
Received: from shiro.work (p1268123-ipngn200803sizuokaden.shizuoka.ocn.ne.jp. [118.13.124.123])
        by smtp.googlemail.com with ESMTPSA id 21sm13095653pfw.105.2020.11.29.03.08.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Nov 2020 03:08:18 -0800 (PST)
From:   Daniel Palmer <daniel@0x0f.com>
To:     soc@kernel.org, linux-gpio@vger.kernel.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linus.walleij@linaro.org,
        robh@kernel.org, w@1wt.eu, daniel@0x0f.com
Subject: [PATCH v4 2/5] dt-bindings: gpio: Binding for MStar MSC313 GPIO controller
Date:   Sun, 29 Nov 2020 20:07:59 +0900
Message-Id: <20201129110803.2461700-3-daniel@0x0f.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201129110803.2461700-1-daniel@0x0f.com>
References: <20201129110803.2461700-1-daniel@0x0f.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a binding description for the MStar/SigmaStar GPIO controller
found in the MSC313 and later ARMv7 SoCs.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 .../bindings/gpio/mstar,msc313-gpio.yaml      | 59 +++++++++++++++++++
 MAINTAINERS                                   |  1 +
 2 files changed, 60 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/gpio/mstar,msc313-gpio.yaml

diff --git a/Documentation/devicetree/bindings/gpio/mstar,msc313-gpio.yaml b/Documentation/devicetree/bindings/gpio/mstar,msc313-gpio.yaml
new file mode 100644
index 000000000000..1f2ef408bb43
--- /dev/null
+++ b/Documentation/devicetree/bindings/gpio/mstar,msc313-gpio.yaml
@@ -0,0 +1,59 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/gpio/mstar,msc313-gpio.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MStar/SigmaStar GPIO controller
+
+maintainers:
+  - Daniel Palmer <daniel@thingy.jp>
+
+properties:
+  $nodename:
+    pattern: "^gpio@[0-9a-f]+$"
+
+  compatible:
+    const: mstar,msc313-gpio
+
+  reg:
+    maxItems: 1
+
+  gpio-controller: true
+
+  "#gpio-cells":
+    const: 2
+
+  gpio-ranges: true
+
+  interrupt-controller: true
+
+  "#interrupt-cells":
+    const: 2
+
+required:
+  - compatible
+  - reg
+  - gpio-controller
+  - "#gpio-cells"
+  - interrupt-controller
+  - "#interrupt-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/msc313-gpio.h>
+
+    gpio: gpio@207800 {
+      compatible = "mstar,msc313e-gpio";
+      #gpio-cells = <2>;
+      reg = <0x207800 0x200>;
+      gpio-controller;
+      gpio-ranges = <&pinctrl 0 36 22>,
+                    <&pinctrl 22 63 4>,
+                    <&pinctrl 26 68 6>;
+      #interrupt-cells = <2>;
+      interrupt-controller;
+      interrupt-parent = <&intc_fiq>;
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 9e7d12b2d403..56a5392b88aa 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2133,6 +2133,7 @@ L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
 W:	http://linux-chenxing.org/
 F:	Documentation/devicetree/bindings/arm/mstar/*
+F:	Documentation/devicetree/bindings/gpio/mstar,msc313-gpio.yaml
 F:	arch/arm/boot/dts/mstar-*
 F:	arch/arm/mach-mstar/
 F:	include/dt-bindings/gpio/msc313-gpio.h
-- 
2.29.2

