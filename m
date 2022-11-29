Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A7CCE63C668
	for <lists+devicetree@lfdr.de>; Tue, 29 Nov 2022 18:29:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230217AbiK2R3X (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Nov 2022 12:29:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232491AbiK2R3V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Nov 2022 12:29:21 -0500
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com [IPv6:2607:f8b0:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA2A05F84B
        for <devicetree@vger.kernel.org>; Tue, 29 Nov 2022 09:29:20 -0800 (PST)
Received: by mail-ot1-x332.google.com with SMTP id m7-20020a9d6447000000b0066da0504b5eso9539974otl.13
        for <devicetree@vger.kernel.org>; Tue, 29 Nov 2022 09:29:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=udm6nw1ZDjvFU6fzxBUSlncrdZ0RFybOK/j61va2T24=;
        b=nvWL9pwomvK8xrnPXbJX8fRHcQXgI9500QQwdFVUnOfMvcRx9M6mqyJQkZIQNnvJrg
         j8dJx3g13FyIv/eUlzX9YSc7qOhQMGM9e4rGDBMjDrX6TeN6FXU+PeGjPZUfuSf/VEq7
         qF0JT95CMpYdbCw2+yH/WH6ijy7F7mLjzh6RPYmex3TKLGHs5iSjbOkORdelyoxO0ID/
         jYH0VwKk7XsrNkKqs9g36GHWn5syqepcEMHTJcccJskguR59A/GV9hyGjU+3eayiSg0r
         DyR1Ph/9cU6d1O32U4Khpgt9SHF4Y9qggvFEqzvheYxI1anrF6MCcZv270rkb6wyLr8P
         6e8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=udm6nw1ZDjvFU6fzxBUSlncrdZ0RFybOK/j61va2T24=;
        b=eI9oJL2kuMzJChalJEq3p/IhW9HOkrQQT2EZJnlFNEnI1WBhfZ72rU00TuxDDnwu4I
         kKpkJxky+jFp452ehOQdTPWjizzt1KjCyp4iKvp9VIOUmygtAb4rMTFrZPl4aFMo4foK
         jiy8elioV6PXx7XPD5+e9P0fOuXe4KBLQNbfhFqo/81EyrNN5Du6tsyiMrv1r2lCizup
         OoEnYlf8957aYIqGNEcJ7hXXdLJNalMahiLtPo8iGffpLVO9HgcDfvnkUZRalTDxV6Zk
         g4L/ZVT9T1SMPvLntg09uoVZRzrn/16jD4EPfQHIl9nzVU/viP4VJOWmuwuaokFHFQWB
         8nJA==
X-Gm-Message-State: ANoB5pldxztiSppyhD807150eVycYSnPR7teh+y1sNpxVzEjrgDPfoQ4
        Gu8a+eaFA7oE4vqABJhA1sXU8KvKzW8=
X-Google-Smtp-Source: AA0mqf7f5CKAnvu+qFZ6za7Y3ODRll+oNHf2qMqp45z8JYf7KKFwqWCfhpvN8iCCVN1l0vyyYi0+3w==
X-Received: by 2002:a9d:2961:0:b0:66c:4e7a:a316 with SMTP id d88-20020a9d2961000000b0066c4e7aa316mr29565998otb.329.1669742959943;
        Tue, 29 Nov 2022 09:29:19 -0800 (PST)
Received: from localhost.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id l26-20020a9d709a000000b00661b46cc26bsm6224546otj.9.2022.11.29.09.29.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Nov 2022 09:29:19 -0800 (PST)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     linux-rockchip@lists.infradead.org
Cc:     devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        maccraft123mc@gmail.com, heiko@sntech.de,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
        thierry.reding@gmail.com, linus.walleij@linaro.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V4 1/3] dt-bindings: display: panel: Add Samsung AMS495QA01
Date:   Tue, 29 Nov 2022 11:29:10 -0600
Message-Id: <20221129172912.9576-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221129172912.9576-1-macroalpha82@gmail.com>
References: <20221129172912.9576-1-macroalpha82@gmail.com>
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

Add documentation for the Samsung AMS495QA01 panel.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
---
 .../display/panel/samsung,ams495qa01.yaml     | 57 +++++++++++++++++++
 1 file changed, 57 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml b/Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml
new file mode 100644
index 000000000000..dd4b9b626fb2
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml
@@ -0,0 +1,57 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/samsung,ams495qa01.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung AMS495QA01 4.95in 960x544 DSI/SPI panel
+
+maintainers:
+  - Chris Morgan <macromorgan@hotmail.com>
+
+allOf:
+  - $ref: panel-common.yaml#
+  - $ref: /schemas/spi/spi-peripheral-props.yaml#
+
+properties:
+  compatible:
+    const: samsung,ams495qa01
+
+  reg: true
+  reset-gpios: true
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
+  - vdd-supply
+
+unevaluatedProperties: false
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
+            enable-gpios = <&gpio4 15 GPIO_ACTIVE_HIGH>;
+            reset-gpios = <&gpio4 0 GPIO_ACTIVE_LOW>;
+            vdd-supply = <&vcc3v3_lcd0_n>;
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
2.25.1

