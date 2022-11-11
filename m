Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 80F0A6262F4
	for <lists+devicetree@lfdr.de>; Fri, 11 Nov 2022 21:31:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232574AbiKKUbq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Nov 2022 15:31:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59752 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233363AbiKKUbp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Nov 2022 15:31:45 -0500
Received: from mail-oa1-x33.google.com (mail-oa1-x33.google.com [IPv6:2001:4860:4864:20::33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 12F4C14083
        for <devicetree@vger.kernel.org>; Fri, 11 Nov 2022 12:31:45 -0800 (PST)
Received: by mail-oa1-x33.google.com with SMTP id 586e51a60fabf-13ae8117023so6558169fac.9
        for <devicetree@vger.kernel.org>; Fri, 11 Nov 2022 12:31:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xete0/AZnyUcmSDoDSoWQ2VGHllGDO85S4fbHOvDNzQ=;
        b=E+rsBRHvmA9YsHXUyGU0u16o6aut3TyI8B6af76TWu1JuXTFzPILeonjAnntNRG64X
         OqcytALmznkqacFQVhXHnjXS5mwARYi2zULr5HwbV78pIWeJbw4295y72ZKCDeQKcOvI
         pEp5jlWk3e72oCC7MHLpIfjct2buY/7Il6Y2joGbY9SYahtW0LpiKzprhZCVugdsPHW+
         pt1+7TqacuWM9JNFefksDsArsKEfHXlTfMY6hFnHM/wYuhsjXnrJrgSefEhxwePE0hIY
         ICpcPoTCFaMgIo68uHMnVlRGkuZIWDFMVmGs0eMLfsIQScFPqORTQ8aey/XfF4B+Ucdu
         5how==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Xete0/AZnyUcmSDoDSoWQ2VGHllGDO85S4fbHOvDNzQ=;
        b=TSyVVqiJ5v1vJZiW8vBfd9roYc3vsQ6BPAFLi1M4g4wDh5a6fuci8e7izymAVucpS8
         3ohOtMsPH+TstsZQ2ieAZ0UU4Z/AdwXTtXFoNXPVyvXDUrAMrFYEDN9xwaeXvjU3RHG6
         iJtpTbNj3EzCI6BF4N/SkroUrXL5eeh516KI81ZhoTVH1uDTY2zMs4BByr+DH+yvJCto
         v54XoAN+nzjfhvHn7RCq3n69CmD0F/773oSJr9WdpbD7u2O35weu8xBmQWwXEcd9AObq
         nLSmGXaRhLPBpM6lxIWBHquRIBjM3C/tnsGnwcTZOvPd6G4uee9Ui6Xy1zw+en/1JMvo
         +gXA==
X-Gm-Message-State: ANoB5pn1Iec8/d2bp/Soy8MQd8zEcXnWIhVX49dYmyCBK6XtGurKU8/K
        gxoIl8skYc05XKhiTD+q/edj7vSbjtQ=
X-Google-Smtp-Source: AA0mqf6Rjas0LF4MGwfygUwXhxQl49ZzYnF1cPIW6+C9MWVL0El/f6GV/+UoK48FHdo2K+sugG76Dw==
X-Received: by 2002:a05:6870:8903:b0:13c:ac47:63e5 with SMTP id i3-20020a056870890300b0013cac4763e5mr1905833oao.278.1668198704363;
        Fri, 11 Nov 2022 12:31:44 -0800 (PST)
Received: from localhost.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id n10-20020a056870558a00b00132f141ef2dsm1734054oao.56.2022.11.11.12.31.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Nov 2022 12:31:43 -0800 (PST)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org, thierry.reding@gmail.com,
        sam@ravnborg.org, airlied@gmail.com, daniel@ffwll.ch,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        Chris Morgan <macromorgan@hotmail.com>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH V5 2/3] dt-bindings: display: panel: Add NewVision NV3051D  bindings
Date:   Fri, 11 Nov 2022 14:31:29 -0600
Message-Id: <20221111203130.9615-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221111203130.9615-1-macroalpha82@gmail.com>
References: <20221111203130.9615-1-macroalpha82@gmail.com>
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

Add documentation for the NewVision NV3051D panel bindings.
Note that for the two expected consumers of this panel binding
the underlying LCD model is unknown. Name "anbernic,rg353p-panel"
is used because the hardware itself is known as "anbernic,rg353p".

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../display/panel/newvision,nv3051d.yaml      | 63 +++++++++++++++++++
 1 file changed, 63 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml b/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
new file mode 100644
index 000000000000..116c1b6030a2
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
@@ -0,0 +1,63 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/newvision,nv3051d.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NewVision NV3051D based LCD panel
+
+description: |
+  The NewVision NV3051D is a driver chip used to drive DSI panels. For now,
+  this driver only supports the 640x480 panels found in the Anbernic RG353
+  based devices.
+
+maintainers:
+  - Chris Morgan <macromorgan@hotmail.com>
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - anbernic,rg353p-panel
+          - anbernic,rg353v-panel
+      - const: newvision,nv3051d
+
+  reg: true
+  backlight: true
+  port: true
+  reset-gpios:
+    description: Active low reset GPIO
+  vdd-supply: true
+
+required:
+  - compatible
+  - reg
+  - backlight
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    dsi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        panel@0 {
+            compatible = "anbernic,rg353p-panel", "newvision,nv3051d";
+            reg = <0>;
+            backlight = <&backlight>;
+            reset-gpios = <&gpio4 0 GPIO_ACTIVE_LOW>;
+            vdd-supply = <&vcc3v3_lcd>;
+
+            port {
+                mipi_in_panel: endpoint {
+                    remote-endpoint = <&mipi_out_panel>;
+                };
+            };
+        };
+    };
+
+...
-- 
2.25.1

