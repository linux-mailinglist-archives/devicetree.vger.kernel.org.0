Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A243F7280CC
	for <lists+devicetree@lfdr.de>; Thu,  8 Jun 2023 15:02:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236594AbjFHNCH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Jun 2023 09:02:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41584 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236595AbjFHNCG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Jun 2023 09:02:06 -0400
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com [IPv6:2607:f8b0:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 05F191FDA
        for <devicetree@vger.kernel.org>; Thu,  8 Jun 2023 06:02:04 -0700 (PDT)
Received: by mail-pf1-x42f.google.com with SMTP id d2e1a72fcca58-6532671ccc7so504528b3a.2
        for <devicetree@vger.kernel.org>; Thu, 08 Jun 2023 06:02:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20221208.gappssmtp.com; s=20221208; t=1686229324; x=1688821324;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dLnYYpnKAb6DRuTkEcq+JlSoqFxtus1qe8JMabvFzcM=;
        b=Mj3C+7HodgCtt44noWXsFwa1bKGjMM+5878lhVzZPahDrJu1MBH1tUrD4b7L50rF2G
         fgRqLFIzD0hUmHG2zXXoTsv7rveXDRwyKXxfNmLNWcfJScKb61XA6XEzs6rV/wcCCk5L
         7ML3phRG+ILDRdKRif7QoJXBQHadgsA27jqw1a5aVJo0pFuWwD2Yf4+4pCl6FnmnYU4r
         +aESjEUar5GphnmEcJ4faDUrJf6yADdyNIIQeyqyUacgdjz3/yTJdtZcVThXvuMfmYCb
         lHdIigFkvmYTknq5G1JKwfm5jdEWrlHDj4zNwalKVBj4Ql5tedS75i3+11OpqKD32GrA
         +/eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686229324; x=1688821324;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dLnYYpnKAb6DRuTkEcq+JlSoqFxtus1qe8JMabvFzcM=;
        b=H6O43J4wm0T6XdZdBYxJUVF3KySCt+Q+HSABwX34OwLwr39d3MnfM0c3z8R3wokc37
         SjExrSL2ZxlhqvutTgy3G8xdr1/fUD5F6xnU4FDPRSDwlwSEDInDeswY755N/i4KySOJ
         KIG/fTtrP1yotkFJkaeK7hGOxSlVaa2bDshIpYNionroCJJCA1tZ4hX/d/q7xr6PbUvp
         FeMLDKTuUW0IxvFiuKycKVZ6Q2Z4Ez7QKOy4ceOIMrxQvjlM/Qy5CSsaPvIHg9Hb61mT
         wbo7w3oC+JeaP1754euG9Fjj6bRRiXd8Npxpwi7gCpo6e5jIIA7UynSqLHTU9Uiu12lT
         bQDA==
X-Gm-Message-State: AC+VfDxhz8wIYqjwjLM7bjfDWAVBvO3//gL18bNzzzNLM+BiKcmMtQR7
        19iQZGYNiQK9mTUuWNuNXuvvYQ==
X-Google-Smtp-Source: ACHHUZ5vv8OrMeONkN6YcPtWm6YaYpzfIaynLGPzL1FJQNor16BgxXj8+Oigum2FS5P/vYL/XXCf7Q==
X-Received: by 2002:a05:6a00:a29:b0:655:89f1:2db8 with SMTP id p41-20020a056a000a2900b0065589f12db8mr10553464pfh.16.1686229322964;
        Thu, 08 Jun 2023 06:02:02 -0700 (PDT)
Received: from yc.huaqin.com ([101.78.151.214])
        by smtp.gmail.com with ESMTPSA id g12-20020a62e30c000000b0065438394fa4sm1111371pfh.90.2023.06.08.06.01.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jun 2023 06:02:02 -0700 (PDT)
From:   Cong Yang <yangcong5@huaqin.corp-partner.google.com>
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, dmitry.torokhov@gmail.com, jikos@kernel.org,
        benjamin.tissoires@redhat.com, dianders@chromium.org,
        hsinyi@google.com
Cc:     linux-input@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Subject: [PATCH v4 1/2] dt-bindings: HID: i2c-hid: ilitek: Introduce bindings for Ilitek ili9882t
Date:   Thu,  8 Jun 2023 21:01:46 +0800
Message-Id: <20230608130147.2835818-2-yangcong5@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230608130147.2835818-1-yangcong5@huaqin.corp-partner.google.com>
References: <20230608130147.2835818-1-yangcong5@huaqin.corp-partner.google.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The ili9882t touch screen chip same as Elan eKTH6915 controller
has a reset gpio. The difference is that ili9882t needs to use
vccio-supply instead of vcc33-supply. Doug's series[1] allows panels
and touchscreens to power on/off together, let's add a phandle for this.

[1]: https://lore.kernel.org/r/20230607215224.2067679-1-dianders@chromium.org

Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
---
 .../bindings/input/ilitek,ili9882t.yaml       | 66 +++++++++++++++++++
 1 file changed, 66 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/input/ilitek,ili9882t.yaml

diff --git a/Documentation/devicetree/bindings/input/ilitek,ili9882t.yaml b/Documentation/devicetree/bindings/input/ilitek,ili9882t.yaml
new file mode 100644
index 000000000000..89584264d6a2
--- /dev/null
+++ b/Documentation/devicetree/bindings/input/ilitek,ili9882t.yaml
@@ -0,0 +1,66 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/input/ilitek,ili9882t.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Ilitek ili9882t touchscreen controller
+
+maintainers:
+  - Dmitry Torokhov <dmitry.torokhov@gmail.com>
+
+description:
+  Supports the Ilitek ili9882t touchscreen controller.
+  This touchscreen controller uses the i2c-hid protocol with a reset GPIO.
+
+allOf:
+  - $ref: /schemas/input/touchscreen/touchscreen.yaml#
+
+properties:
+  compatible:
+    const: ilitek,ili9882t
+
+  reg:
+    const: 0x41
+
+  interrupts:
+    maxItems: 1
+
+  panel: true
+
+  reset-gpios:
+    maxItems: 1
+    description: Reset GPIO.
+
+
+  vccio-supply:
+    description: The 1.8V supply to the touchscreen.
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - vccio-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    i2c {
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      touchscreen: touchscreen@41 {
+        compatible = "ilitek,ili9882t";
+        reg = <0x41>;
+
+        interrupt-parent = <&pio>;
+        interrupts = <12 IRQ_TYPE_LEVEL_LOW>;
+
+        reset-gpios = <&pio 60 GPIO_ACTIVE_LOW>;
+        vccio-supply = <&mt6366_vio18_reg>;
+      };
+    };
-- 
2.25.1

