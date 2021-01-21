Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 23E2C2FEC38
	for <lists+devicetree@lfdr.de>; Thu, 21 Jan 2021 14:48:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729720AbhAUNrB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jan 2021 08:47:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42760 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729110AbhAUNpW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jan 2021 08:45:22 -0500
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40009C061575
        for <devicetree@vger.kernel.org>; Thu, 21 Jan 2021 05:44:42 -0800 (PST)
Received: by mail-ed1-x531.google.com with SMTP id g24so2488648edw.9
        for <devicetree@vger.kernel.org>; Thu, 21 Jan 2021 05:44:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=M3W0oGnqVx8sZXTH4B/8UbtQ0KbCZpqf+zZKCBCuHVA=;
        b=NhqMXLkK9ZCnJF+OAdzuMV/V0Cxz1WeCrswp/hbFEE4WdzkO1vjW/CHtLiTt8/6Zwx
         8zxorKBYllOyPIS0JbykVhnCyh5rRMl40zhBrSZYt2QUQsZ5oyXXDzUZpnUhSEdUurYm
         xRTVJd2yHwlMeOrLOgosTusd6xN9ho99nx+tB655Tmr1Y8uto52RAG5BV+p5EWVlVAp6
         dlBKLkhqAEP2qhKRBqt5tki0hWm3Gzv/12QLSp7oaqflIJTqBaVan3ROSKZPfmylJO8H
         +kqRSDS+zsFUkybdKGtd0/CmJGgCbjeNghBTEyD851by0YfnTNYsdmFoeGRqyIUq22FV
         XOvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=M3W0oGnqVx8sZXTH4B/8UbtQ0KbCZpqf+zZKCBCuHVA=;
        b=WPPMjmKhlaVd9+Zs1QojNKRkkjmglDjwW+/WXGdreyrq0CQtrpLEdH8EgfY3V+dtUM
         XtwYU1jG6ZV/s1QG7+iIvUKGNP6Dmm7yxcR2prKRjYKGmaQOVpT7+5PMJ2irjA1iMwCl
         WU4Rm72p/szaEtBPn8OTTs2w4395mUi9OLMbSQy9wtXvb94xrm6nvN/SEKrv6wjxePls
         cXZWJf3g7/nPLs44SJV7u9i6KryRkWGQ+N2UbO0+/+gP7PDFLsw950jyWR8FV1WM1daR
         U7jYKtyBpk9hZaJJFoGdry1jQrr3smPo5+wl+SghXMrKg3Z3C1qE14FRk4cBs3aOuvKX
         YqFA==
X-Gm-Message-State: AOAM5325eU8t6823EqLiEsYT7zCNiLTSPYdBbbZ8lVqaltCjjb/1Kxc3
        oE9cMjnSzPNtkdL5JxDhNveCeS8Su3AgXA==
X-Google-Smtp-Source: ABdhPJxzh7fdy0hjbeRujkeb2zjTAnYR6ILI5AnRB6OEZ73CFwsCetWprX2FMc4SYrSxpd9w7FPJsQ==
X-Received: by 2002:a05:6402:8cd:: with SMTP id d13mr7982151edz.335.1611236680889;
        Thu, 21 Jan 2021 05:44:40 -0800 (PST)
Received: from localhost.localdomain (dh207-99-51.xnet.hr. [88.207.99.51])
        by smtp.googlemail.com with ESMTPSA id j18sm2246376ejv.18.2021.01.21.05.44.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Jan 2021 05:44:40 -0800 (PST)
From:   Robert Marko <robert.marko@sartura.hr>
To:     jdelvare@suse.com, linux@roeck-us.net, robh+dt@kernel.org,
        linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, corbet@lwn.net,
        linux-doc@vger.kernel.org
Cc:     Robert Marko <robert.marko@sartura.hr>,
        Luka Perkov <luka.perkov@sartura.hr>
Subject: [PATCH v5 1/3] dt-bindings: hwmon: Add TI TPS23861 bindings
Date:   Thu, 21 Jan 2021 14:44:32 +0100
Message-Id: <20210121134434.2782405-1-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document bindings for the Texas Instruments TPS23861 driver.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
Cc: Luka Perkov <luka.perkov@sartura.hr>
---
Changes in v5:
* Drop uint32 reference

Changes in v4:
* Correct shunt binding

 .../bindings/hwmon/ti,tps23861.yaml           | 51 +++++++++++++++++++
 1 file changed, 51 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/hwmon/ti,tps23861.yaml

diff --git a/Documentation/devicetree/bindings/hwmon/ti,tps23861.yaml b/Documentation/devicetree/bindings/hwmon/ti,tps23861.yaml
new file mode 100644
index 000000000000..3bc8e73dfbf0
--- /dev/null
+++ b/Documentation/devicetree/bindings/hwmon/ti,tps23861.yaml
@@ -0,0 +1,51 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+
+$id: http://devicetree.org/schemas/hwmon/ti,tps23861.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: TI TPS23861 PoE PSE
+
+maintainers:
+  - Robert Marko <robert.marko@sartura.hr>
+
+description: |
+  The TPS23861 is a IEEE 802.3at Quad Port Power-over-Ethernet PSE Controller.
+
+  Datasheets:
+  https://www.ti.com/lit/gpn/tps23861
+
+
+properties:
+  compatible:
+    enum:
+      - ti,tps23861
+
+  reg:
+    maxItems: 1
+
+  shunt-resistor-micro-ohms:
+    description: The value of curent sense resistor in microohms.
+    default: 255000
+    minimum: 250000
+    maximum: 255000
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    i2c {
+          #address-cells = <1>;
+          #size-cells = <0>;
+
+          tps23861@30 {
+              compatible = "ti,tps23861";
+              reg = <0x30>;
+              shunt-resistor-micro-ohms = <255000>;
+          };
+    };
-- 
2.29.2

