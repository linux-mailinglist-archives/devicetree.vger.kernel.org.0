Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 68F6E22B287
	for <lists+devicetree@lfdr.de>; Thu, 23 Jul 2020 17:28:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729663AbgGWP1Q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Jul 2020 11:27:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58262 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729650AbgGWP1P (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Jul 2020 11:27:15 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A823AC0619DC
        for <devicetree@vger.kernel.org>; Thu, 23 Jul 2020 08:27:14 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id a15so5557256wrh.10
        for <devicetree@vger.kernel.org>; Thu, 23 Jul 2020 08:27:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=tsnEVgbRFSFGMlt+VQiCkCrNIR6sMOUDqSqxuXgPGHg=;
        b=Cr23JDMpVp3xyxtyoT+EoLiJ9Pa1wlSmvjZoMuyWr9grSVVH2eZ8d6Mz9RYQx3dShE
         FHRuLq1FokYw5DbMWd0gLYqroq82g3o1a2nw7ZBv0+Toro7nJeRhCcSdUjJRKjEK3Nuo
         sE/WpQrHKgPqtneCrf3NglngiWQ+xxbA/KlSDIuZaUvHbm0YFJPCjGNhWFo+2nMZwxtS
         Vhd/GT2Mh+IAePtp1ISbMY2GJFY9QX9C2VMejryXYo2FtJpoU+MOsJC+ZG/mERxZOLpS
         LSKt2dgXAvZa6Hdb88QTB9ynX+VwY7394akSmAmrKsTwgfeAGg42iqO2dH4OexUO0vt8
         QRCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=tsnEVgbRFSFGMlt+VQiCkCrNIR6sMOUDqSqxuXgPGHg=;
        b=Gc9/TAt6Y2GJ54oDaa7Xw4GdYmQcYau6EBoaZ3WcyUoiNnOpJxrSTT1kqr1eulPG0b
         o/9CMAHoFxk2GBkYsiuI+NR5pzL6ZsrNcKQXak9PWiMBg8HdInF2iw8MIRyPJwyYNAQx
         +M1VVKmK4FTNK2hc6Rfnj2kfJeOv/Nd0altIgWqWJGdbG+5NZ1FJ+6GLPOnHx4/ofAYu
         32bR5S521QPOKmVX0VldIJEZ2Xr+NBbZ37elxTciCnRR7gcckWJgZOfhoL488j5OmBN5
         ugD9AN0YwngFmQhVonjfaoInuqW4ePaPy2Vq9hr2uEcokn630ulmKCmcYoK1AVsFSKJa
         UbBQ==
X-Gm-Message-State: AOAM533L67BEBmqlKWbMfo+D5tsaztXWvghbFGjPtGswRobjMVbvbBJU
        cbGIgbB+//hfAe1/w4+r4/DDCA==
X-Google-Smtp-Source: ABdhPJxTxi5wEUPax+nvchhQqfH9dZ0LqOFlf1wlEmxL8HSkf6xNbCKQPqa1nbQ2fKzP+DuBMy/0+Q==
X-Received: by 2002:adf:a351:: with SMTP id d17mr4469464wrb.111.1595518033248;
        Thu, 23 Jul 2020 08:27:13 -0700 (PDT)
Received: from mai.imgcgcw.net ([2a01:e34:ed2f:f020:dca7:8d30:33fa:daac])
        by smtp.gmail.com with ESMTPSA id g145sm5963491wmg.23.2020.07.23.08.27.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jul 2020 08:27:12 -0700 (PDT)
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
To:     tglx@linutronix.de
Cc:     =?UTF-8?q?=E5=91=A8=E7=90=B0=E6=9D=B0=20=28Zhou=20Yanjie=29?= 
        <zhouyanjie@wanyeetech.com>,
        =?UTF-8?q?=E5=91=A8=E6=AD=A3?= <sernia.zhou@foxmail.com>,
        Paul Cercueil <paul@crapouillou.net>,
        Rob Herring <robh@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-kernel@vger.kernel.org (open list:CLOCKSOURCE, CLOCKEVENT DRIVERS),
        devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED
        DEVICE TREE BINDINGS)
Subject: [PATCH 15/16] dt-bindings: timer: Add Ingenic X1000 OST bindings.
Date:   Thu, 23 Jul 2020 17:26:35 +0200
Message-Id: <20200723152639.639771-15-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200723152639.639771-1-daniel.lezcano@linaro.org>
References: <1b1122f4-bce9-f349-e602-ed8e14cbb501@linaro.org>
 <20200723152639.639771-1-daniel.lezcano@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: 周琰杰 (Zhou Yanjie) <zhouyanjie@wanyeetech.com>

Add the OST bindings for the X1000 SoC from Ingenic.

Tested-by: 周正 (Zhou Zheng) <sernia.zhou@foxmail.com>
Signed-off-by: 周琰杰 (Zhou Yanjie) <zhouyanjie@wanyeetech.com>
Reviewed-by: Paul Cercueil <paul@crapouillou.net>
Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
Link: https://lore.kernel.org/r/20200722171804.97559-2-zhouyanjie@wanyeetech.com
---
 .../bindings/timer/ingenic,sysost.yaml        | 63 +++++++++++++++++++
 include/dt-bindings/clock/ingenic,sysost.h    | 12 ++++
 2 files changed, 75 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/timer/ingenic,sysost.yaml
 create mode 100644 include/dt-bindings/clock/ingenic,sysost.h

diff --git a/Documentation/devicetree/bindings/timer/ingenic,sysost.yaml b/Documentation/devicetree/bindings/timer/ingenic,sysost.yaml
new file mode 100644
index 000000000000..df3eb76045e0
--- /dev/null
+++ b/Documentation/devicetree/bindings/timer/ingenic,sysost.yaml
@@ -0,0 +1,63 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/timer/ingenic,sysost.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Bindings for SYSOST in Ingenic XBurst family SoCs
+
+maintainers:
+  - 周琰杰 (Zhou Yanjie) <zhouyanjie@wanyeetech.com>
+
+description:
+  The SYSOST in an Ingenic SoC provides one 64bit timer for clocksource
+  and one or more 32bit timers for clockevent.
+
+properties:
+  "#clock-cells":
+    const: 1
+
+  compatible:
+    enum:
+      - ingenic,x1000-ost
+      - ingenic,x2000-ost
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    const: ost
+
+  interrupts:
+    maxItems: 1
+
+required:
+  - "#clock-cells"
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - interrupts
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/x1000-cgu.h>
+
+    ost: timer@12000000 {
+        compatible = "ingenic,x1000-ost";
+        reg = <0x12000000 0x3c>;
+
+        #clock-cells = <1>;
+
+        clocks = <&cgu X1000_CLK_OST>;
+        clock-names = "ost";
+
+        interrupt-parent = <&cpuintc>;
+        interrupts = <3>;
+    };
+...
diff --git a/include/dt-bindings/clock/ingenic,sysost.h b/include/dt-bindings/clock/ingenic,sysost.h
new file mode 100644
index 000000000000..9ac88e90babf
--- /dev/null
+++ b/include/dt-bindings/clock/ingenic,sysost.h
@@ -0,0 +1,12 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * This header provides clock numbers for the ingenic,tcu DT binding.
+ */
+
+#ifndef __DT_BINDINGS_CLOCK_INGENIC_OST_H__
+#define __DT_BINDINGS_CLOCK_INGENIC_OST_H__
+
+#define OST_CLK_PERCPU_TIMER	0
+#define OST_CLK_GLOBAL_TIMER	1
+
+#endif /* __DT_BINDINGS_CLOCK_INGENIC_OST_H__ */
-- 
2.25.1

