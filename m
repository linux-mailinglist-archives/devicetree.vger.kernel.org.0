Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7B30265C6F0
	for <lists+devicetree@lfdr.de>; Tue,  3 Jan 2023 20:07:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238522AbjACTHT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Jan 2023 14:07:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43074 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238730AbjACTHP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Jan 2023 14:07:15 -0500
Received: from mail-oa1-x2e.google.com (mail-oa1-x2e.google.com [IPv6:2001:4860:4864:20::2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8297ADFC8
        for <devicetree@vger.kernel.org>; Tue,  3 Jan 2023 11:07:14 -0800 (PST)
Received: by mail-oa1-x2e.google.com with SMTP id 586e51a60fabf-142b72a728fso37845618fac.9
        for <devicetree@vger.kernel.org>; Tue, 03 Jan 2023 11:07:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5MuYdw/TKmmfACRBxYwGpprkKtsguH2MTUAVNosMrsw=;
        b=kCw1vFAqU0vOuAxLd6aONFgPfYzmkCnXAWMT+lfy4TFXsBwNUTQJ1jYj1bIrUnyn2Y
         1aY1fpLXO74CXwF+7MkLee3dpJHfFxg+x5EKCrVJ9iICb1jpdzf0QCPIQNLoBZTlMKSX
         Tbc90nZFV2Uazha8Iw9dH2GDJ5oT3VOuOtO5+Vd8iXdCaDiFKt56NomcyuHtsZmX98Ts
         DB5X3b3QepmSUOpL+co467we//ClPMgSpRWwEskeHpN1cSdaEHrgwYgiGeBvz69BLOR5
         8/g0E5Sq5rU3WdgKf0hnBEu+9tTGuxryPOdzE89rn16ZYBYVcTsiafCdXOIkhD4dIGtt
         OOvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5MuYdw/TKmmfACRBxYwGpprkKtsguH2MTUAVNosMrsw=;
        b=ngL/oHpeaR7wTqEk4QeaXejAgUxKVKoWdiM0TQRxsQiWGLJAv4vVLK/JBo45aHOQCS
         yvAXPO2CdYcA/LMSuBoU0FyWmQFFppcnHwI6BvwBPD0v7TQ6X8OXfMVPXZ9HNumrfOHg
         YyQajqdIB31p/pp57oWAjbnOGIgKFChzN3pXx72/kIhcQtlChgj847upVwArwX7FGR6S
         jNR4PbVJ4OxpHr9ya/tXh2mw7LsoffI++a1Tzx4wWgqEUQQpfbAlxhRqKNh5BzdIQqmu
         lzl09HHaMUW0v6A5eGoz2OdsLz4osNBbbQ1BCfZTFah8LjZ89b1P6bC1da48VTA3z7qR
         chTA==
X-Gm-Message-State: AFqh2ko0MIzbPZl/619Gte3Bk+uuDRiJN77Ef6d89gujs4dccwTYXaoy
        5kC49C3A8LI/cUzww9yhz1U=
X-Google-Smtp-Source: AMrXdXvoonL3R80H8i+/5RbEGmxtPYYCMHqfwWOtt9cFbwYpUqfQV7IVBHwhJz7jTfGfEKFkdFfm9Q==
X-Received: by 2002:a05:6870:889b:b0:143:e0d7:7427 with SMTP id m27-20020a056870889b00b00143e0d77427mr24294519oam.17.1672772833500;
        Tue, 03 Jan 2023 11:07:13 -0800 (PST)
Received: from localhost.localdomain ([76.244.6.13])
        by smtp.gmail.com with ESMTPSA id s24-20020a056870ea9800b0014c7958c55bsm14752207oap.42.2023.01.03.11.07.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jan 2023 11:07:13 -0800 (PST)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        maccraft123mc@gmail.com, tzimmermann@suse.de, mripard@kernel.org,
        maarten.lankhorst@linux.intel.com, heiko@sntech.de,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
        thierry.reding@gmail.com, linus.walleij@linaro.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V7 2/4] dt-bindings: display: panel: Add Samsung AMS495QA01
Date:   Tue,  3 Jan 2023 13:07:05 -0600
Message-Id: <20230103190707.104595-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230103190707.104595-1-macroalpha82@gmail.com>
References: <20230103190707.104595-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Add documentation for Samsung AMS495QA01 panel (with Magnachip
D53E6EA8966 controller IC).

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
---
 .../display/panel/samsung,ams495qa01.yaml     | 57 +++++++++++++++++++
 1 file changed, 57 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml b/Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml
new file mode 100644
index 000000000000..58fa073ce258
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml
@@ -0,0 +1,57 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/samsung,ams495qa01.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung AMS495QA01 panel with Magnachip D53E6EA8966 controller
+
+maintainers:
+  - Chris Morgan <macromorgan@hotmail.com>
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    const: samsung,ams495qa01
+
+  reg: true
+  reset-gpios:
+    description: reset gpio, must be GPIO_ACTIVE_LOW
+  elvdd-supply:
+    description: regulator that supplies voltage to the panel display
+  enable-gpios: true
+  port: true
+  vdd-supply:
+    description: regulator that supplies voltage to panel logic
+
+required:
+  - compatible
+  - reg
+  - reset-gpios
+  - vdd-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        panel@0 {
+            compatible = "samsung,ams495qa01";
+            reg = <0>;
+            reset-gpios = <&gpio4 0 GPIO_ACTIVE_LOW>;
+            vdd-supply = <&vcc_3v3>;
+
+            port {
+                mipi_in_panel: endpoint {
+                  remote-endpoint = <&mipi_out_panel>;
+                };
+            };
+        };
+    };
+
+...
-- 
2.34.1

