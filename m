Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 49F7F72615E
	for <lists+devicetree@lfdr.de>; Wed,  7 Jun 2023 15:35:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240813AbjFGNfY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Jun 2023 09:35:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54408 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238595AbjFGNfU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Jun 2023 09:35:20 -0400
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EBECA1BDF
        for <devicetree@vger.kernel.org>; Wed,  7 Jun 2023 06:35:17 -0700 (PDT)
Received: by mail-pl1-x633.google.com with SMTP id d9443c01a7336-1b025d26f4fso64539865ad.1
        for <devicetree@vger.kernel.org>; Wed, 07 Jun 2023 06:35:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20221208.gappssmtp.com; s=20221208; t=1686144917; x=1688736917;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QfUV/Cp7glFPn9A4mv5hVzho0tfvpQrDqpAb8xgmZ74=;
        b=gBEDGQ/rQtY7ZM2XNTz68DIASaYbbJH84H3AyupZx5/TKNyJ0ZxXFdtU+xyGaTLNT3
         nUz0gqNdHVnrfJHXUpoYwips3dkPb9gnfw3Ig61zMtyvYYRoWSatSDR4aPaZ2bYzJW+o
         uIjGENAvrgdDmlGIgCFAP3mahMeRi7FO6Pht3NKWi+R0wFGULG9LlT+QJWOJYEBF+tkq
         R9JKmuX/Fte6vAPi1BGwE7If7p7b+OJqrwyFi7KDkyw5sGIh+CeTbN3UGzj9vGGoaAAq
         DiA9Q6GuTpuXc8yln74476hOm8PZp5rgrJ8OqSKapsyPe4LYoJPzKMojs3rcwAIDWRdI
         01Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686144917; x=1688736917;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QfUV/Cp7glFPn9A4mv5hVzho0tfvpQrDqpAb8xgmZ74=;
        b=NF5r8bGwVVJQIGUEBPqC+WbzHxp4i6t0uh2GmKwZa7oEF+EYWdandY1jhF/394FLRh
         d+aVNtQc2VImGp8J7VYgncDOcgL2mgI8OMwb90J9BfDtF3FzHQlTkYUnvW2kqEWQsDEQ
         r6vzFmrgKoS9oBGIhfntMVqDVa+6r8vwGsI+SzxnxskA7cuYMivLGcP3mMblorya2W2f
         ocl7cJOOIK03v5Ia3leMlSNz2OTjszVwOmO7Ot9ShjJUhr9QmwIiPZYUNmwpilg2eMjX
         LcLott0Zzg4l+EcJmFdJCvL1a4W6atQokOkPUa8vNRo/NgjjYJ+HJu8MQAKnqfLZXRA2
         /vBg==
X-Gm-Message-State: AC+VfDzNBjuV/cVqJ6r1eh79H5Y7VcCZJtyEbV8WyFlyMyIihs5FtEVS
        +4fGjh57e+glu7vcv8312byxgQ==
X-Google-Smtp-Source: ACHHUZ6SiBwSAnVD3kQwjmkqR48FnJ0G0Az7HsbFPe+boSJGAJXSi9rExpEjCTfGIEYNjrhHDEnwJg==
X-Received: by 2002:a17:902:9a06:b0:1b2:4be9:c25d with SMTP id v6-20020a1709029a0600b001b24be9c25dmr2077437plp.4.1686144917436;
        Wed, 07 Jun 2023 06:35:17 -0700 (PDT)
Received: from yc.huaqin.com ([101.78.151.214])
        by smtp.gmail.com with ESMTPSA id y20-20020a170902ed5400b001b034faf49csm10405680plb.285.2023.06.07.06.35.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jun 2023 06:35:17 -0700 (PDT)
From:   Cong Yang <yangcong5@huaqin.corp-partner.google.com>
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, dmitry.torokhov@gmail.com, jikos@kernel.org,
        benjamin.tissoires@redhat.com, dianders@chromium.org,
        hsinyi@google.com
Cc:     linux-input@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Subject: [PATCH v3 1/2] dt-bindings: HID: i2c-hid: ilitek: Introduce bindings for Ilitek ili9882t
Date:   Wed,  7 Jun 2023 21:34:57 +0800
Message-Id: <20230607133458.4075667-2-yangcong5@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230607133458.4075667-1-yangcong5@huaqin.corp-partner.google.com>
References: <20230607133458.4075667-1-yangcong5@huaqin.corp-partner.google.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The ili9882t touch screen chip same as Elan eKTH6915 controller
has a reset gpio. The difference is that ili9882t needs to use
vccio-supply instead of vcc33-supply. Doug's series[1] allows panels
and touchscreens to power on/off together, let's add a phandle for this.

[1]: https: //lore.kernel.org/all/20230523193017.4109557-1-dianders@chromium.org/

Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
---
 .../bindings/input/ilitek,ili9882t.yaml       | 67 +++++++++++++++++++
 1 file changed, 67 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/input/ilitek,ili9882t.yaml

diff --git a/Documentation/devicetree/bindings/input/ilitek,ili9882t.yaml b/Documentation/devicetree/bindings/input/ilitek,ili9882t.yaml
new file mode 100644
index 000000000000..f69fa3aaf4c5
--- /dev/null
+++ b/Documentation/devicetree/bindings/input/ilitek,ili9882t.yaml
@@ -0,0 +1,67 @@
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
+properties:
+  compatible:
+    items:
+      - const: ilitek,ili9882t
+
+  reg:
+    const: 0x41
+
+  interrupts:
+    maxItems: 1
+
+  panel:
+    description: If this is a touchscreen, the panel it's connected to. This
+      indicates that the panel and touchscreen are expected to be power
+      sequenced together.
+    $ref: /schemas/types.yaml#/definitions/phandle
+
+  reset-gpios:
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

