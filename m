Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 444C6608D20
	for <lists+devicetree@lfdr.de>; Sat, 22 Oct 2022 14:13:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229649AbiJVMN4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 22 Oct 2022 08:13:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60982 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229576AbiJVMNz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 22 Oct 2022 08:13:55 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 962C24AD5B
        for <devicetree@vger.kernel.org>; Sat, 22 Oct 2022 05:13:54 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id g7so9461451lfv.5
        for <devicetree@vger.kernel.org>; Sat, 22 Oct 2022 05:13:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3YVf0JwT5dFglEkAzFYBOn94gjH1FcmeZUI6KevHi6M=;
        b=kwJfBEDx3ZLIwFvyEUteKjBCRI4Zy9zlbipx30WTJU+ubezDGJ4a4VOAn+u07F+9C0
         uexMg/xpiaVI0FOc0E33xh+OYNcQPBwjjlBS8MVh5bmQLCFvkj4+PY70T0Uu6DqhDiya
         rNvnb5wwNd55yMCnJTuvtLMc7rZ1WUDuoPA6zQnwx0RyxoR9PGGJG/wNgjXO/4d3sVeB
         LezaMpycVcAFsI/4ApeD5ig+a/LM4m0Ku7xJltWSvq3/CSgZwhTCdjWWaOPG9WucAE7o
         7EzXltCleFpUittLKGYTRKWPf+DNdRMXS0yCYaXhhwMAhqMwKKjpq34ooCr+of+k17Hz
         l2tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3YVf0JwT5dFglEkAzFYBOn94gjH1FcmeZUI6KevHi6M=;
        b=gi6QuMk3qVJ2z46wPasul4ClyMun4qjtVaZ1nCub1H3xr35DlGRaddQ0COwcTRcOBu
         GTtbQ/CCaHwMJpxyXOCft67amWydq9UjN6pmEpqfTi/QVoYmBYUueiudaQlhbTPUyfY9
         77lI8x0VwxhO66jJyS/kzRMEb1B6lZ48fXDnF+4R5WdOw1yHLuHtR3okzMsYhxJ+wsrx
         3fUHrav8pLPBjWE0orjXvcYH6rOFPrXdR0X35h6Gk/72x4cHZsVsDpMiRAo1ykEsUzPO
         YXKtwwz00p/jdK9C36PvVEBJTFWBIlcum6MNqumTePenmLuLqHnfdmQ0HOspc2Iw0jJN
         wcQg==
X-Gm-Message-State: ACrzQf3BXMWZCYmre3h4sVSdvG1mqzNjJXAX/RfqD9g7WrqEGEf+Lhuv
        e3HgkaMjuhihNP4W+DI3PCE51Q==
X-Google-Smtp-Source: AMsMyM4AxJ+YkbcoF/+7t7oQ0WPbJmikhIZtVUUccnBwShFh9+5e5GmpHIwtkVxe93c8/j8z8Xp/TQ==
X-Received: by 2002:ac2:5183:0:b0:4a1:e99d:e7b6 with SMTP id u3-20020ac25183000000b004a1e99de7b6mr8803895lfi.676.1666440832882;
        Sat, 22 Oct 2022 05:13:52 -0700 (PDT)
Received: from localhost.localdomain (c-fdcc225c.014-348-6c756e10.bbcust.telenor.se. [92.34.204.253])
        by smtp.gmail.com with ESMTPSA id q1-20020a2e2a01000000b0026dcfc2bf4csm3799013ljq.57.2022.10.22.05.13.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Oct 2022 05:13:52 -0700 (PDT)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc:     linux-usb@vger.kernel.org,
        Linus Walleij <linus.walleij@linaro.org>,
        Felipe Balbi <balbi@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH 1/2 v1] usb: phy: phy-gpio-vbus-usb: Add devicetree bindings
Date:   Sat, 22 Oct 2022 14:11:48 +0200
Message-Id: <20221022121149.3329641-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds a simple device tree binding for a GPIO-based
VBUS detection PHY.

Cc: Felipe Balbi <balbi@kernel.org>
Cc: devicetree@vger.kernel.org
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 .../bindings/phy/phy-usb-vbus-gpio.yaml       | 47 +++++++++++++++++++
 1 file changed, 47 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/phy-usb-vbus-gpio.yaml

diff --git a/Documentation/devicetree/bindings/phy/phy-usb-vbus-gpio.yaml b/Documentation/devicetree/bindings/phy/phy-usb-vbus-gpio.yaml
new file mode 100644
index 000000000000..4e10b58f8235
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/phy-usb-vbus-gpio.yaml
@@ -0,0 +1,47 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/phy-usb-vbus-gpio.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: GPIO-based VBUS detection USB PHY
+
+maintainers:
+  - Linus Walleij <linus.walleij@linaro.org>
+
+description: A VBUS event occurs when a USB plug is attached to
+  a USB host and peripheral, the voltage (VBUS) is exposed from the
+  host to the peripheral when the last of the two ends of the
+  cable is plugged in. This can be either on the host side or on
+  the peripheral side, whichever comes last. It is possible to
+  provide a very simple USB VBUS detection mechanism by using a
+  GPIO line that will trigger on an edge event on the VBUS
+  pin.
+
+properties:
+  compatible:
+    const: phy-usb-vbus-gpio
+
+  "#phy-cells":
+    const: 0
+
+  vbus-gpios:
+    maxItems: 1
+    description: The GPIO line connected to VBUS
+
+required:
+  - compatible
+  - "#phy-cells"
+  - vbus-gpios
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    usb1_phy: phy {
+        compatible = "phy-usb-vbus-gpio";
+        #phy-cells = <0>;
+        vbus-gpios = <&gpio0 18 GPIO_ACTIVE_LOW>;
+    };
-- 
2.37.3

