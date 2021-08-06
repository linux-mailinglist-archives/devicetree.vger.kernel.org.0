Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 69ADA3E26B2
	for <lists+devicetree@lfdr.de>; Fri,  6 Aug 2021 11:03:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243915AbhHFJDP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 Aug 2021 05:03:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39392 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243794AbhHFJDO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 Aug 2021 05:03:14 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2584DC061799
        for <devicetree@vger.kernel.org>; Fri,  6 Aug 2021 02:02:58 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id o10so11005151ljp.0
        for <devicetree@vger.kernel.org>; Fri, 06 Aug 2021 02:02:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Pdz+F0PxTcBoWBPi7w93ZPa5df8AmKqUiM4AHtMKqjM=;
        b=HRDupAr1I+CswQ0FGrJ7o7eBsDG2I267kRrxFv0UNPplUMlZldUsOtmZo/FUfNJLcN
         uSlGrsNpI1quZZwG6soDUNyoq6+UonjF+z4LtYGwUILwev63l/GRJ0W9VVAKil5k8F6g
         L+4HUPyUp1CmLnCk/mzjA4he+UWunVEG0siwqQB9aj+y1+NR3NP6GPz4suvGZWlwRv2K
         nJqk6u+4nfI7YrOSkt1WsPaDDL9M0fhPG9XnlMzrxF2VkX8VT2Oi7Qay52kdsRQnoWle
         +oJvq8i63LH6X3Lkb2Fdkha8KlBOPy32Y24MXodl52/2HfqScqUD/ryYojGRozjiQX+e
         nerA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Pdz+F0PxTcBoWBPi7w93ZPa5df8AmKqUiM4AHtMKqjM=;
        b=plHeoH9r8PWjstIYIwLL1HV3EqIuY3rnm1cVZOdpxlpfmnLq99AorDSpKuufeZI0/0
         4ilrdEqAhVi/cr6p2sx7VcqMVJnbEfuSBk8Tk/74xZwH6BRXbTq+SYw70tMr1wo/+Msf
         tNclKVir8/pZLAug+wmwuZt8+GwzNsiN9aUGQ0DFA3286AqSgo5itYFwb0/FAKoaA8FB
         YaXSpY+x7lJIjxnE4hg9ahAeIrPPxn082rDlT4P0Y1ADBiFb7eA/G5VE5DK5Gzqy5qro
         2wB++v31NhVb0MVFR87Kt8PeKdyMB778z1njhKyShBC7SaQoCY2k2WfaWuJ0H5+bOsO4
         lb3Q==
X-Gm-Message-State: AOAM532Xx0UMvT/UKzSWvV5PHwBPixrtGpCeMjCZxoti20FuLH4NBx4s
        s+qaNzNDUhk0dSrAmD0EovEP7A==
X-Google-Smtp-Source: ABdhPJzIb/d74o4UoAR6WzeLTKhrVQWDJkMDEKcrCH8TOG/8QoAJgTAJvlXboDgchGXJVpK4rvTg+A==
X-Received: by 2002:a2e:82d5:: with SMTP id n21mr5983933ljh.126.1628240576384;
        Fri, 06 Aug 2021 02:02:56 -0700 (PDT)
Received: from localhost.localdomain (c-fdcc225c.014-348-6c756e10.bbcust.telenor.se. [92.34.204.253])
        by smtp.gmail.com with ESMTPSA id s18sm640799lje.25.2021.08.06.02.02.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Aug 2021 02:02:56 -0700 (PDT)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     Sebastian Reichel <sre@kernel.org>
Cc:     linux-pm@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: power: Bindings for Samsung batteries
Date:   Fri,  6 Aug 2021 11:00:50 +0200
Message-Id: <20210806090050.3510671-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds device tree bindings for Samsung SDI batteries.
Everything can be determined from the product number so the entire
battery is just a specific compatible string.

Cc: devicetree@vger.kernel.org
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 .../power/supply/samsung,battery.yaml         | 56 +++++++++++++++++++
 1 file changed, 56 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/power/supply/samsung,battery.yaml

diff --git a/Documentation/devicetree/bindings/power/supply/samsung,battery.yaml b/Documentation/devicetree/bindings/power/supply/samsung,battery.yaml
new file mode 100644
index 000000000000..40292d581b10
--- /dev/null
+++ b/Documentation/devicetree/bindings/power/supply/samsung,battery.yaml
@@ -0,0 +1,56 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/power/supply/samsung,battery.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung SDI Batteries
+
+maintainers:
+  - Linus Walleij <linus.walleij@linaro.org>
+
+description: |
+  Samsung SDI (Samsung Digital Interface) batteries are all different versions
+  of lithium ion chemistry devices used for mobile phones, laptops and other
+  portable electronics. The batteries are adapted to a specific product and
+  the physical restrictions make it impossible to use another battery with the
+  product, so product device trees can specify these batteries. Operating
+  systems should determine hardware characteristics of the batteries from the
+  compatible string.
+
+properties:
+  compatible:
+    oneOf:
+      - const: samsung,eb-l1m7flu
+        description: 3.8V 1500 mAh battery used in Samsung GT-I8190
+      - const: samsung,eb425161la
+        description: 3.8V 1500 mAh battery used in Samsung SGH-T599 and SGH-I407
+      - const: samsung,eb425161lu
+        description: 3.8V 1500 mAh battery used in Samsung GT-I8160
+      - const: samsung,eb485159lu
+        description: 3.8V 1700 mAh battery used in Samsung GT-S7710
+      - const: samsung,eb535151vu
+        description: 3.8V 1500 mAh battery used in Samsung GT-I9070
+      - const: samsung,eb585157lu
+        description: 3.8V 2000 mAh battery used in Samsung GT-I8530
+
+required:
+  - compatible
+
+additionalProperties: false
+
+examples:
+  - |
+    power {
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      battery: battery {
+        compatible = "samsung,eb425161la";
+      };
+
+      charger@11 {
+        reg = <0x11>;
+        monitored-battery = <&battery>;
+      };
+    };
-- 
2.31.1

