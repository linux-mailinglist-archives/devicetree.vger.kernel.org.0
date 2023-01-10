Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E9AA9664CED
	for <lists+devicetree@lfdr.de>; Tue, 10 Jan 2023 21:03:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230161AbjAJUDK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Jan 2023 15:03:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55654 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232097AbjAJUDH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Jan 2023 15:03:07 -0500
Received: from mail-oo1-xc36.google.com (mail-oo1-xc36.google.com [IPv6:2607:f8b0:4864:20::c36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B6CC1838F
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 12:03:06 -0800 (PST)
Received: by mail-oo1-xc36.google.com with SMTP id j6-20020a4ac546000000b004f1f6208187so2110084ooq.13
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 12:03:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dgMx+QidzWwZB9d8EFxiQBvCTRSPbMX2JTxiBtWNFyk=;
        b=lyuDrX+JUiUXvd41LuqumERhjN0RSpIxWin21vu+wf1V0YRZkVgID+091W5ug1Vi/q
         Qa7TPma391EC7LZEDf/LYaocyRLjZayXOMlI+VuuhPk+8ovZ56ZsXrSjA6F8KWmJavxp
         y5gcfNraHjo9bUcEZuhWviC6v2LmKNa9dEBeBnHDeLuAj25e7k0oJYsmjiJtrgB7YPc2
         xvKS52Io0b0TlbXjf+wXmPTzVCY4CDIWejtsn1ZcVNynKRVJKChsyLKOA/mzJ1E/cl/5
         +SyNmOs5yS5gAbtEzq6SUE4Dq+hTOdpZ/TytODXlaIwoob1ItgiQq8FL5nROvdHeQx5U
         tufw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dgMx+QidzWwZB9d8EFxiQBvCTRSPbMX2JTxiBtWNFyk=;
        b=JnYvc01DT50C0X9+K4C0rSeGVN286MlVmicylqLZGhlG6NAtgdRyuXbhrEu6YJJ4y8
         VZ6ofRGgwB5Ox4hJq9urBg/O56ebeFsPWZsYRU7A+PXTyNojYwqd0OdngjqPuGp3fP9L
         JPSOL9FK+MnqWI3jcv1mm3DvRyUWxVBmed8kaWTV8ucQ8SmVPl4Xd5/kvFsktNAhjRu+
         oWvpvA+qJc9G8L2Ujq1NggT4x0YeksPbcNAz6OJgzVH74wazDSUq5H4+nU6IHZZJ0oSk
         D2qgAq7+JsPKzIlbGxt4VIw4O3eLwc8T0d2fFjetFoXg8VnXBgy1xH2eg/yCtlgr4ZtQ
         yuiA==
X-Gm-Message-State: AFqh2kpXvv0F5WHPH98qVQ0kesFPnos7lKzxky2aD32qxP6/sOFTF6EN
        6Pcu46S2B0BocWc/pYREq98LbKdxyI8=
X-Google-Smtp-Source: AMrXdXttj8wh0ymNl53Hrx8x6W1dqMYoQv3OPum00In+oTXiJ/NIMK/j/iDobxR7iiXYnxWjf+3yDQ==
X-Received: by 2002:a4a:97b1:0:b0:49f:dba7:5e65 with SMTP id w46-20020a4a97b1000000b0049fdba75e65mr28394714ooi.3.1673380985493;
        Tue, 10 Jan 2023 12:03:05 -0800 (PST)
Received: from localhost.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id r4-20020a4aad04000000b004a394578e14sm6089779oon.32.2023.01.10.12.03.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jan 2023 12:03:05 -0800 (PST)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     dri-devel@lists.freedesktop.org
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        maccraft123mc@gmail.com, tzimmermann@suse.de, mripard@kernel.org,
        maarten.lankhorst@linux.intel.com, heiko@sntech.de,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
        thierry.reding@gmail.com, linus.walleij@linaro.org,
        Chris Morgan <macromorgan@hotmail.com>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v8 2/4] dt-bindings: display: panel: Add Samsung AMS495QA01
Date:   Tue, 10 Jan 2023 14:02:53 -0600
Message-Id: <20230110200255.1218738-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230110200255.1218738-1-macroalpha82@gmail.com>
References: <20230110200255.1218738-1-macroalpha82@gmail.com>
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
Reviewed-by: Rob Herring <robh@kernel.org>
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

