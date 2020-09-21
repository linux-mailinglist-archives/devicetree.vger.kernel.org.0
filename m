Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F34B427333C
	for <lists+devicetree@lfdr.de>; Mon, 21 Sep 2020 21:56:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728248AbgIUT4M (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Sep 2020 15:56:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35506 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728211AbgIUT4I (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Sep 2020 15:56:08 -0400
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com [IPv6:2607:f8b0:4864:20::449])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 55DDBC0613CF
        for <devicetree@vger.kernel.org>; Mon, 21 Sep 2020 12:56:08 -0700 (PDT)
Received: by mail-pf1-x449.google.com with SMTP id h15so9510692pfr.3
        for <devicetree@vger.kernel.org>; Mon, 21 Sep 2020 12:56:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=K2goBvIwkTK8ugnrDDc5GDIaAaKMslFcAhC/ByZKCvs=;
        b=Inj3SCX3f+N4qO6X8rAdSkgLwhM9zxM3R5bgUUiN+nOkugH69TZicIxvtGgPBAokl9
         nOetwc72sVxeU7XuIZxfSE8Ym7Oh3/TMPSyKp2NMaBp4oslgzheazMEO5ppeCkc3cvvb
         6KkAPZ3BReVK0pf+hsrqSW0aJcU2m8rGr1CjNza8t0nDPekJcFUSzOmc8aVI5osTTIvp
         eD+GLHm7RVZECu2heDxGvSs9Oqb7KnYpo7gpeuLK+GKNXZdnRJupUntLUqOgkwpFw/IQ
         EoT/b2rkVyLTnVbdLlT1qp+QX3rsOFHD92Gbizpm+QwZ17unpYObXX/i5A89NAJ3RDQR
         gnNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=K2goBvIwkTK8ugnrDDc5GDIaAaKMslFcAhC/ByZKCvs=;
        b=SKhTBqqMu/m6YVGjTIwR72jxI2YjMuXoXJf5n8/iLZX6GE+JF8JYJGYA+CcuxAgosW
         GPRnsGcLVZNxo93p36AXAUApt1ZrDZjw1PaZfSoXtaohrmAoRlXjeq/9PIebppHZt8u1
         4uK+VLYLeWVE10k4FOtIE+RDJLPSA0GVnDbOlfF2KMAn69JLbT4oyr1WE7f7+jU0+Kqz
         dZ4OmIjiTxXaWi/N6bUHBub22eJ/BA9NWU+K78xrk8H3DZmd2EBliO7jfDJEaSP08JpZ
         0HRykzn/0osn+NLzoJKy/jQdRFt2q1+ejjExGkN64nx7kePAeP1/4Pdhubvj5xX7wn5+
         Ay8g==
X-Gm-Message-State: AOAM532lACTmMQTINdcX1+PNpDitBCuNyl2jdyqiwy6Yw4eJM3875VHB
        HzOYHuxYYodhf6fYyRqy6J3HAyBnyOc=
X-Google-Smtp-Source: ABdhPJxa8PoNUt3+xMn2wZBNLQIDKi+Tqcg64dY2s7Be7qqEpouHsl1hTwYDis5Za1ajA91rxB7tnCE5vRQ=
Sender: "badhri via sendgmr" <badhri@badhri.mtv.corp.google.com>
X-Received: from badhri.mtv.corp.google.com ([2620:15c:211:1:f292:1cff:fee0:66cf])
 (user=badhri job=sendgmr) by 2002:a17:902:a712:b029:d1:cbf4:c583 with SMTP id
 w18-20020a170902a712b02900d1cbf4c583mr1515621plq.16.1600718167808; Mon, 21
 Sep 2020 12:56:07 -0700 (PDT)
Date:   Mon, 21 Sep 2020 12:55:47 -0700
In-Reply-To: <20200921195555.1050731-1-badhri@google.com>
Message-Id: <20200921195555.1050731-3-badhri@google.com>
Mime-Version: 1.0
References: <20200921195555.1050731-1-badhri@google.com>
X-Mailer: git-send-email 2.28.0.681.g6f77f65b4e-goog
Subject: [PATCH v8 03/11] dt-bindings: usb: Maxim type-c controller device
 tree binding document
From:   Badhri Jagan Sridharan <badhri@google.com>
To:     Guenter Roeck <linux@roeck-us.net>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Lee Jones <lee.jones@linaro.org>,
        Mark Brown <broonie@kernel.org>,
        Maxime Ripard <mripard@kernel.org>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Thierry Reding <treding@nvidia.com>,
        Prashant Malani <pmalani@chromium.org>,
        Badhri Jagan Sridharan <badhri@google.com>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add device tree binding document for Maxim TCPCI based Type-C chip driver

Signed-off-by: Badhri Jagan Sridharan <badhri@google.com>
---
Changes since v1:
- Changing patch version to v6 to fix version number confusion.

Changes since v6:
- Migrated to yaml format.

Changes since v7:
- Rebase on usb-next
 .../devicetree/bindings/usb/maxim,tcpci.yaml  | 63 +++++++++++++++++++
 1 file changed, 63 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/usb/maxim,tcpci.yaml

diff --git a/Documentation/devicetree/bindings/usb/maxim,tcpci.yaml b/Documentation/devicetree/bindings/usb/maxim,tcpci.yaml
new file mode 100644
index 000000000000..8e646b4483eb
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/maxim,tcpci.yaml
@@ -0,0 +1,63 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/usb/maxim,tcpci.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Maxim TCPCI Type-C PD controller DT bindings
+
+maintainers:
+  - Badhri Jagan Sridharan <badhri@google.com>
+
+description: Maxim TCPCI Type-C PD controller
+
+properties:
+  compatible:
+    enum:
+      - maxim,tcpci
+  reg:
+    const: 0x25
+
+  interrupts:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    i2c0 {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        maxtcpc@25 {
+            compatible = "maxim,tcpc";
+            reg = <0x25>;
+            interrupt-parent = <&gpa8>;
+            interrupts = <2 IRQ_TYPE_LEVEL_LOW>;
+
+            connector {
+                compatible = "usb-c-connector";
+                label = "USB-C";
+                data-role = "dual";
+                power-role = "dual";
+                try-power-role = "sink";
+                self-powered;
+                op-sink-microwatt = <2600000>;
+                source-pdos = <PDO_FIXED(5000, 900,
+                                         PDO_FIXED_SUSPEND |
+                                         PDO_FIXED_USB_COMM |
+                                         PDO_FIXED_DATA_SWAP |
+                                         PDO_FIXED_DUAL_ROLE)>;
+                sink-pdos = <PDO_FIXED(5000, 3000,
+                                       PDO_FIXED_USB_COMM |
+                                       PDO_FIXED_DATA_SWAP |
+                                       PDO_FIXED_DUAL_ROLE)
+                                       PDO_FIXED(9000, 2000, 0)
+                frs-typec-current = <FRS_5V_1P5A>;
+        };
+    };
+...
-- 
2.28.0.681.g6f77f65b4e-goog

