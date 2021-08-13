Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 75F9B3EBE23
	for <lists+devicetree@lfdr.de>; Sat, 14 Aug 2021 00:03:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235284AbhHMWDQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Aug 2021 18:03:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56746 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235232AbhHMWDK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Aug 2021 18:03:10 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89D61C0617AF
        for <devicetree@vger.kernel.org>; Fri, 13 Aug 2021 15:02:42 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id w20so22510751lfu.7
        for <devicetree@vger.kernel.org>; Fri, 13 Aug 2021 15:02:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=zdoJvRdg/wiFMUqCvkYyo5RNQaUscCsPcncLCMhtPj8=;
        b=f8XsZ752SQAycow7/iB1RfXwOm+G3Zp1Tz6qAUMBy1R6O2FZ9qoZ22yYdqZBOZyxI5
         v3G4fUbh1rqqvN0qM0LRurSHXB2l8P7hv7TZMN7RWpSX3vg4fT7qmMPSZ39ySSJKgCIW
         zh0+qsnpHTjybYQ3emFBesytEPSiPLomOk4WZXeUhPXg7xMDJr9+NHnSschXrogQNu5N
         77WWZPs6lfHmzNq54qZN0YjSYLmR9rmbF3K0Fo2aMcIyQKTIaHj/SLjEi3pg6/KSlvZx
         ljYhoxKherijbquT7IqBSmIQaeVMhPNxIXhfLLXjGWkgkaNWo67yeVYHxLWob2WT+y2H
         tdVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zdoJvRdg/wiFMUqCvkYyo5RNQaUscCsPcncLCMhtPj8=;
        b=JtnWibtH2YjF2FwGtp7E92h7FJYvHvu4C7g0bTB+fJ/ktPk6gKkMsnJ5XFdCK2eKAc
         BJsHAxAEwlicCo5yCwqHHFT6aTirO33M+xsRQJfSCPRcn42lhEA4YuN5whH9AJmgoVsq
         aPVClsAxN0pPlM4vrq8VfYdJ1ParwjAf/tbvUW1MyqrSnE9I28yWu4KUHUcHo2n9nuw3
         tPM5SJZ0sL+yYZDf1uvZTfSKTQK1eHEJmU8Q+ks7pV/PJ+2PdzkjY7BRDvj4r14At74W
         JjpXgvqE0UXItxpzXOJ0UPfx/ZUZTcH5/CaGh+DFjyZHSLzb438ly0JHoWEVFoqTZEhh
         oSIw==
X-Gm-Message-State: AOAM532SCCbm2YxLLyHaZLMZZ77fdeAosG25Mexd/aF7rl/TcCbcpSKH
        U/7JmUP3FytRA+9pX+KGJBYZlw==
X-Google-Smtp-Source: ABdhPJxe0oddE+SnbYcUknKoKmvFBnFFiwpK0p+40INIEZBanyAowK9scIelaK+O/i9oOfhCzlKfAg==
X-Received: by 2002:ac2:5496:: with SMTP id t22mr3086990lfk.445.1628892160938;
        Fri, 13 Aug 2021 15:02:40 -0700 (PDT)
Received: from localhost.localdomain (c-fdcc225c.014-348-6c756e10.bbcust.telenor.se. [92.34.204.253])
        by smtp.gmail.com with ESMTPSA id s17sm274912ljp.61.2021.08.13.15.02.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Aug 2021 15:02:40 -0700 (PDT)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     netdev@vger.kernel.org, "David S . Miller" <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>
Cc:     Imre Kaloz <kaloz@openwrt.org>, Krzysztof Halasa <khalasa@piap.pl>,
        Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH net-next 5/6 v2] ixp4xx_eth: Add devicetree bindings
Date:   Sat, 14 Aug 2021 00:00:10 +0200
Message-Id: <20210813220011.921211-6-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210813220011.921211-1-linus.walleij@linaro.org>
References: <20210813220011.921211-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds device tree bindings for the IXP46x PTP Timer, a companion
to the IXP4xx ethernet in newer platforms.

Cc: devicetree@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>
Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 .../bindings/net/intel,ixp46x-ptp-timer.yaml  | 54 +++++++++++++++++++
 1 file changed, 54 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/intel,ixp46x-ptp-timer.yaml

diff --git a/Documentation/devicetree/bindings/net/intel,ixp46x-ptp-timer.yaml b/Documentation/devicetree/bindings/net/intel,ixp46x-ptp-timer.yaml
new file mode 100644
index 000000000000..8b9b3f915d92
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/intel,ixp46x-ptp-timer.yaml
@@ -0,0 +1,54 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2018 Linaro Ltd.
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/net/intel,ixp46x-ptp-timer.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Intel IXP46x PTP Timer (TSYNC)
+
+maintainers:
+  - Linus Walleij <linus.walleij@linaro.org>
+
+description: |
+  The Intel IXP46x PTP timer is known in the manual as IEEE1588 Hardware
+  Assist and Time Synchronization Hardware Assist TSYNC provides a PTP
+  timer. It exists in the Intel IXP45x and IXP46x XScale SoCs.
+
+properties:
+  compatible:
+    const: intel,ixp46x-ptp-timer
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    items:
+      - description: Interrupt to trigger master mode snapshot from the
+          PRP timer, usually a GPIO interrupt.
+      - description: Interrupt to trigger slave mode snapshot from the
+          PRP timer, usually a GPIO interrupt.
+
+  interrupt-names:
+    items:
+      - const: master
+      - const: slave
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
+    #include <dt-bindings/interrupt-controller/irq.h>
+    ptp-timer@c8010000 {
+        compatible = "intel,ixp46x-ptp-timer";
+        reg = <0xc8010000 0x1000>;
+        interrupt-parent = <&gpio0>;
+        interrupts = <8 IRQ_TYPE_EDGE_FALLING>, <7 IRQ_TYPE_EDGE_FALLING>;
+        interrupt-names = "master", "slave";
+    };
-- 
2.31.1

