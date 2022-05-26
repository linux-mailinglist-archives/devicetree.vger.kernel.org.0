Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7D5935355B3
	for <lists+devicetree@lfdr.de>; Thu, 26 May 2022 23:39:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233541AbiEZVi1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 May 2022 17:38:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56044 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231351AbiEZVi0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 May 2022 17:38:26 -0400
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com [IPv6:2a00:1450:4864:20::244])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00E3CEE08
        for <devicetree@vger.kernel.org>; Thu, 26 May 2022 14:38:25 -0700 (PDT)
Received: by mail-lj1-x244.google.com with SMTP id v9so3069126lja.12
        for <devicetree@vger.kernel.org>; Thu, 26 May 2022 14:38:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=krTDvQQxmZRpLwBL3elypGrTug41WSsusjpj6VsdHWo=;
        b=r8qYluOm8pUI9Keqcsr7bDiIyEp8jPdOFUiItGwn1HfS2eHldL5k+sYXr9c6dCgTh7
         O5km6lA5HdvF2fTh91e4qFrFebPV7eisEnZ8jnInbdgcBlrIOzJz/IefP9gSfPnUc6/0
         e/TW8UW4mV9uS5nN2L86soVm8NMW3Y1Uinavslg92WdotVa3CO9EDuFemI2j7PBVs9WT
         HFlqc+ZUhE5wqJZqn7dd+FXIJZK62fub1JD7ORYMIC2GT79jAS6xH2aZ9wMUyUecPc3C
         X9On1iO5Nk8Cf5HGxdcUDMcU1SZXhmC58RohuoPVXAMt0XLPlVAT+xtPQ9tarJMEu4TN
         y/CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=krTDvQQxmZRpLwBL3elypGrTug41WSsusjpj6VsdHWo=;
        b=idG0NxPjDMOuOW6VZVLf9Z6ELstGGNt5Ty2VzqZ1K81o9pnqdEjKFMMzcC2J1n32+c
         mALhblwxGtpBSH15ADvoHhL4eWj5R4Y2VHxGQfk7y1cdbLHEAP34lZIEuQVDVepdqF6e
         SairFxnyy5R/8rpCtA1Zvm8YQT02DU4DYwx8/UuHBoIz08hvuns6iZ5CdkzRH9QSnVsA
         Rh/lmq/EVCI2v4pw2HRglP21j7xkOlEwnAWf8ohJHMy6bLahYYN+Iqrjdn/l0N7itOF8
         rWpn/3mmRqyTc3PptOEVjvo89J4m4Ip29Yk/9y8Gw3U/JOA+Zy5OtVq2PCcdvRuTsIHG
         iyew==
X-Gm-Message-State: AOAM531sPcJoXrbJVGKFdHsbP5HTJFJ00jIBeDs4JiTUZxZcQUAZissY
        IaWKoY3U1J2vRqwx5gc0nfIVzg==
X-Google-Smtp-Source: ABdhPJyzctOZJOLxCZ5+dBGEIH0e30bdktLCK/BHl5wDISAC1FMQZkNpT1PjUa6kNZSzYIu27yre7g==
X-Received: by 2002:a2e:bc2a:0:b0:253:edc9:dc73 with SMTP id b42-20020a2ebc2a000000b00253edc9dc73mr12494262ljf.351.1653601104295;
        Thu, 26 May 2022 14:38:24 -0700 (PDT)
Received: from localhost.localdomain (c-fdcc225c.014-348-6c756e10.bbcust.telenor.se. [92.34.204.253])
        by smtp.gmail.com with ESMTPSA id 11-20020a05651c128b00b0024f3d1daedfsm632591ljc.103.2022.05.26.14.38.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 May 2022 14:38:23 -0700 (PDT)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>
Cc:     linux-kernel@vger.kernel.org,
        Linus Walleij <linus.walleij@linaro.org>,
        Lee Jones <lee.jones@linaro.org>, devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: timer: Add Nomadik MTU binding
Date:   Thu, 26 May 2022 23:36:21 +0200
Message-Id: <20220526213621.373727-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Nomadik MTU timer has been used in devicetrees forever
but somehow we missed to add a binding for it. Fix it
by simply adding it.

Cc: Lee Jones <lee.jones@linaro.org>
Cc: devicetree@vger.kernel.org
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 .../bindings/timer/st,nomadik-mtu.yaml        | 58 +++++++++++++++++++
 1 file changed, 58 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/timer/st,nomadik-mtu.yaml

diff --git a/Documentation/devicetree/bindings/timer/st,nomadik-mtu.yaml b/Documentation/devicetree/bindings/timer/st,nomadik-mtu.yaml
new file mode 100644
index 000000000000..901848d298ec
--- /dev/null
+++ b/Documentation/devicetree/bindings/timer/st,nomadik-mtu.yaml
@@ -0,0 +1,58 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2022 Linaro Ltd.
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/timer/st,nomadik-mtu.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: ST Microelectronics Nomadik Multi-Timer Unit MTU Timer
+
+maintainers:
+  - Linus Walleij <linus.walleij@linaro.org>
+
+description: This timer is found in the ST Microelectronics Nomadik
+  SoCs STn8800, STn8810 and STn8815 as well as in ST-Ericsson DB8500.
+
+properties:
+  compatible:
+    items:
+      - const: st,nomadik-mtu
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    description: The first clock named TIMCLK clocks the actual timers and
+      the second clock clocks the digital interface to the interconnect.
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: timclk
+      - const: apb_pclk
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
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/mfd/dbx500-prcmu.h>
+    timer@a03c6000 {
+      compatible = "st,nomadik-mtu";
+      reg = <0xa03c6000 0x1000>;
+      interrupts = <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>;
+
+      clocks = <&prcmu_clk PRCMU_TIMCLK>, <&prcc_pclk 6 6>;
+      clock-names = "timclk", "apb_pclk";
+    };
-- 
2.35.3

