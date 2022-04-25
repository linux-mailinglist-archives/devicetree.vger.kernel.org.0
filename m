Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8C83650E88E
	for <lists+devicetree@lfdr.de>; Mon, 25 Apr 2022 20:48:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244557AbiDYStl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Apr 2022 14:49:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46144 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244555AbiDYStl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Apr 2022 14:49:41 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 38F9C6E8FE
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 11:46:35 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id y3so11018533ejo.12
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 11:46:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=zNf6LLD8HrhjGUR4iM02IxWSyL3elzsMKZrfz7gR6SU=;
        b=dgSGukzZsx9sWgYuXCFyBlckve/tmCUxWQp3gHngo3DlrgGFcC1Y9g9gkwe+8zlJcT
         ZKBCbKkwRxc/odoMgXwdAcrpVixQcUAt/00qUqfxCYeo2PGlk4oOgpfXfcpQ4gy8eNka
         zEaYOxLuenTdNcLwjjxiklHPwcFk9N5PAUayZL7blEr2eEexmZyGPEuMxv6r7LjoxXPi
         9sDmG9GbuDXX8sV7mAJ5eD4I413aL9kNVi0h0D9j2VNdbzeD98bgj+hPprlUT40LDsLb
         XBNz7nDbKgFKL51dHTDnu3yKXkC7d2rY9pIdOvP/YgG9aDs2pDd3GbhTSQCxv0TlJ/ft
         nqnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=zNf6LLD8HrhjGUR4iM02IxWSyL3elzsMKZrfz7gR6SU=;
        b=QOHSAP4trwnlVrCR9zIVUpnwdqV7unaouDpsZHymnfzSC8yXY1U4lX/40r84hTvSQ/
         SgnPfYDKWGP4mV/p0fPiWm8U38bbOW7+RcHz2AycX+6K/htbUpZcX+R+AG3aKmNyv8b9
         ZplDMHhnPpqhn3nm0sqRf5D55lVMyRM3Av++MHzXASp75tWl6Z7G0BYTYCUux0igo1pM
         +rMtHVYFGvHlJhkd6bfDjh8JtWen6JaUQRuzCCyVVaZCC2zWAzSfok3HvJ+HMkuYNrBi
         A+jKbeTMVKc2bXlmT2s9PYfJLvXTo4IwYLRN34gp9V0hQ4OkV6Q2cuuKhrEDISHqqE3p
         cn+Q==
X-Gm-Message-State: AOAM532E67pGngXgebOjqWu+U6TjqfwjZpBqU8WxxtQ1e+KCTXbKDGc/
        p30LX+Bz0cnkoiqCs2TcZLIsxw==
X-Google-Smtp-Source: ABdhPJzD2rFARJCrwO/EzVDwgRmycF8YVobvFL+OL+UL+4dKpJ0NRJbXyqDD2BJbFIFg+GuzisxD+A==
X-Received: by 2002:a17:906:38d9:b0:6e8:3f85:4da3 with SMTP id r25-20020a17090638d900b006e83f854da3mr18459489ejd.196.1650912393799;
        Mon, 25 Apr 2022 11:46:33 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id v7-20020a50d087000000b00424269f1c75sm5181080edd.96.2022.04.25.11.46.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Apr 2022 11:46:33 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: [RESENT PATCH v3] dt-bindings: gpio: add common consumer GPIO lines
Date:   Mon, 25 Apr 2022 20:46:31 +0200
Message-Id: <20220425184631.684906-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.32.0
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

Typical GPIO lines like enable, powerdown, reset or wakeup are not
documented as common, which leads to new variations of these (e.g.
pwdn-gpios).  Add a common schema which serves also as a documentation
for preferred naming.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Rob Herring <robh@kernel.org>

---

Reason for resend:
==================
Previously patch was on hold because richtek,rt4801 bindings were using
two GPIOs in "enable-gpios", so this schema would complain.  This was
resolved here:
https://lore.kernel.org/all/165089886500.211842.728549769223794277.b4-ty@kernel.org/

Changes since v2:
==================
1. Correct my email address.
2. Add Rob's review.

Changes since v1:
==================
1. Select-true, add maxItems and description for each entry (Rob).
2. Mention ACTIVE_LOW in bindings description (Linus).
3. Add allOf for pwrseq reset-gpios case.
---
 .../bindings/gpio/gpio-consumer-common.yaml   | 64 +++++++++++++++++++
 1 file changed, 64 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/gpio/gpio-consumer-common.yaml

diff --git a/Documentation/devicetree/bindings/gpio/gpio-consumer-common.yaml b/Documentation/devicetree/bindings/gpio/gpio-consumer-common.yaml
new file mode 100644
index 000000000000..40d0be31e200
--- /dev/null
+++ b/Documentation/devicetree/bindings/gpio/gpio-consumer-common.yaml
@@ -0,0 +1,64 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/gpio/gpio-consumer-common.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Common GPIO lines
+
+maintainers:
+  - Bartosz Golaszewski <brgl@bgdev.pl>
+  - Linus Walleij <linus.walleij@linaro.org>
+
+description:
+  Pay attention to using proper GPIO flag (e.g. GPIO_ACTIVE_LOW) for the GPIOs
+  using inverted signal (e.g. RESETN).
+
+select: true
+
+properties:
+  enable-gpios:
+    maxItems: 1
+    description:
+      GPIO connected to the enable control pin.
+
+  reset-gpios:
+    description:
+      GPIO (or GPIOs for power sequence) connected to the device reset pin
+      (e.g. RESET or RESETN).
+
+  powerdown-gpios:
+    maxItems: 1
+    description:
+      GPIO connected to the power down pin (hardware power down or power cut,
+      e.g. PD or PWDN).
+
+  pwdn-gpios:
+    maxItems: 1
+    description: Use powerdown-gpios
+    deprecated: true
+
+  wakeup-gpios:
+    maxItems: 1
+    description:
+      GPIO connected to the pin waking up the device from suspend or other
+      power-saving modes.
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - mmc-pwrseq-simple
+    then:
+      properties:
+        reset-gpios:
+          minItems: 1
+          maxItems: 32
+    else:
+      properties:
+        reset-gpios:
+          maxItems: 1
+
+additionalProperties: true
-- 
2.32.0

