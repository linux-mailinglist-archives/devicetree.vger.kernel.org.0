Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3A6363DAFB1
	for <lists+devicetree@lfdr.de>; Fri, 30 Jul 2021 01:07:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232810AbhG2XHx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Jul 2021 19:07:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45822 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229667AbhG2XHw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Jul 2021 19:07:52 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B63BCC0613C1
        for <devicetree@vger.kernel.org>; Thu, 29 Jul 2021 16:07:48 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id r17so13989962lfe.2
        for <devicetree@vger.kernel.org>; Thu, 29 Jul 2021 16:07:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=RQDtu9kQfe9kDnqIYwpik/tMr0BFysHyyoJucVn6soA=;
        b=F2W6dM1Wy2BhI+j5+zrvn6gYFq7PnDxD5ehbRZi4Wn6RfgCr15Qk33IUMOCyUnRZbx
         Q4rkHe+PSPIx81aCsq9d1gBGasjek/bdN+g3Vp0yvBtmqXs2MxbX4ujwu33KFdfh6nIE
         VMxvjzAlda8aCnn6CtTMQdP59xO+Pn4em+jEb5Iamcp6yyO1PLsJKIulD9IMXLBEcSm/
         ATFP5EqkIfwGn5e0brOZ+rXBOID4dObibG+ok2ZasfYQVkrG77nhwQ815Z+kkCcK4ndU
         oLv3EDIp2WMYG42SpDglF1raWpzlLudYdOg0K1s2o4FtVXLmiDdXkwpGaFRpcfhBpxou
         CgtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=RQDtu9kQfe9kDnqIYwpik/tMr0BFysHyyoJucVn6soA=;
        b=t6HJSOiZXG/B2vIOZErLgMX9Gbb/M9lXWXbs9q6aYhOg3Et6qIE8WPzy20vLKTlgNj
         WzHnOp9T8QnIM9QjzH1bKEUJcTVA7rCLT/BQ3MQk5b3jnKh6ZsB83nLry1dDzN3iTwp4
         FPxV9mpsCI9/2t9AwoQs5+EGoY6evWxBrW6y1Cruj/I915XJj2NcyoqpGDRZVhsOnrtH
         v9afcnlogx6OcPDYKqehMvi35LDe+0poYo64pwNvKGVrxik/J2A7kDxpC3GN3d3H2fHP
         4AG4EZZa0JmEPlpnW/FW4aoWskVYhH9eGwztooOlOEGZLHjtovx880PBqpZekTXqSV1D
         38yA==
X-Gm-Message-State: AOAM5336Wdak8JfUFJG3Zcye2478eJBzQT08qguZbPaJSE7R+/k7Si51
        QfyW4acIAKBzFT1XVW7vhQnsUZGpxfv0kA==
X-Google-Smtp-Source: ABdhPJwJwlEpwMuCS/yANWblqURrF3vek0SyO0gnTYztydUttuyYkeGtIlv9CNyt0M9rM/jC7UceTQ==
X-Received: by 2002:a05:6512:3d0f:: with SMTP id d15mr5550574lfv.246.1627600066954;
        Thu, 29 Jul 2021 16:07:46 -0700 (PDT)
Received: from localhost.localdomain (c-fdcc225c.014-348-6c756e10.bbcust.telenor.se. [92.34.204.253])
        by smtp.gmail.com with ESMTPSA id l21sm248815ljc.94.2021.07.29.16.07.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jul 2021 16:07:46 -0700 (PDT)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     Jean Delvare <jdelvare@suse.com>,
        Guenter Roeck <linux@roeck-us.net>
Cc:     linux-hwmon@vger.kernel.org,
        Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: hwmon: Add bindings for Winbond W83781D
Date:   Fri, 30 Jul 2021 01:05:42 +0200
Message-Id: <20210729230543.2853485-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds a device tree binding for the Winbond W83781D and its
sibling HW monitoring ICs. This is used in for example the Freecom
FSG-3 router/NAS.

Cc: devicetree@vger.kernel.org
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 .../bindings/hwmon/winbond,w83781d.yaml       | 41 +++++++++++++++++++
 1 file changed, 41 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/hwmon/winbond,w83781d.yaml

diff --git a/Documentation/devicetree/bindings/hwmon/winbond,w83781d.yaml b/Documentation/devicetree/bindings/hwmon/winbond,w83781d.yaml
new file mode 100644
index 000000000000..31ce77a4b087
--- /dev/null
+++ b/Documentation/devicetree/bindings/hwmon/winbond,w83781d.yaml
@@ -0,0 +1,41 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+
+$id: http://devicetree.org/schemas/hwmon/winbond,w83781d.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Winbond W83781 and compatible hardware monitor IC
+
+maintainers:
+  - Linus Walleij <linus.walleij@linaro.org>
+
+properties:
+  compatible:
+    enum:
+      - winbond,w83781d
+      - winbond,w83781g
+      - winbond,w83782d
+      - winbond,w83783s
+      - asus,as99127f
+
+  reg:
+    maxItems: 1
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
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        temperature-sensor@28 {
+            compatible = "winbond,w83781d";
+            reg = <0x28>;
+        };
+    };
-- 
2.31.1

