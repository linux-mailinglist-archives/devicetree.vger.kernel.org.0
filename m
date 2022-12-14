Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BCEC664CF26
	for <lists+devicetree@lfdr.de>; Wed, 14 Dec 2022 19:07:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239143AbiLNSH3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Dec 2022 13:07:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37498 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238738AbiLNSHC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Dec 2022 13:07:02 -0500
Received: from mail-oa1-x33.google.com (mail-oa1-x33.google.com [IPv6:2001:4860:4864:20::33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D5AEB2A94C
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 10:06:24 -0800 (PST)
Received: by mail-oa1-x33.google.com with SMTP id 586e51a60fabf-1445ca00781so17642337fac.1
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 10:06:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5lJuELApsBW0bc4szk9ypcA4YHRJo5ia7+cbg67UL5U=;
        b=fQA4VQ3OCWwd4w7xebn1Qy4gZqGHSwP5LXVazCqCe8zjxYEn2DuQpUNeQn1UV3xRfc
         5T4/Pb3zcFy2cfW8Jt37iwM3ll42EkIw3gzS/7KJ006EVaVOQNWxBMrEsr9xLHMPq8+c
         yCrVR/QKBFkfidQKQZArP1zg53V9jcnx3CwWSHnZiNc0tKMPvYlnpy2a0M2+zF8/Ji9y
         YxZbgEuq7W3ilpe1WySlDOec1kG/bHjI9tFXf+dBP56VYaL+Rs9c4WJimct7U3DTfhBC
         OjH2THC0ZXm7dcTU2I0HtlxkYVQJUijBSjA1H1mQKzPxA251jMEKptNBK9PFmVwEcRYZ
         1mJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5lJuELApsBW0bc4szk9ypcA4YHRJo5ia7+cbg67UL5U=;
        b=h8L0tutb425oyJML41HYtExIlNhJb8gfv2SMMuh4OwvMu+erPy1uX6tBktjZPIWNtW
         c9bRVguK0zywQauL3NmCKjh1mE5l8QhyffOzLpKbt8zlZZ2FSBKFM5Chgj+TeFalzZYA
         QdxTs6DDI0diix6Vpih3K32txNdJmuWFVUAKLUWTNjBURTXKfQUzBz9TqkOMJ4YFJTUQ
         9esJPiGXb+GSMkV9dfM3gSl8y9ia84kWGTWBJ53+FpWJn+09rUFtm1DW6bAzbUV+Qcw9
         d9OgESRW27qKTZGzAWoQ2JSpm+whZpXX6cj/ni+0QyOoia+iQ7fDz3ArkhgNWKrM/KwM
         IliQ==
X-Gm-Message-State: ANoB5pn11twnuxo7Ei1t9jxzVqRyXc+Q6YGXEeqX7jDVSZLskR8fv3ND
        l+5NSENPVkfDaqATv7bQl/c=
X-Google-Smtp-Source: AA0mqf6CRpxND5wX8WG7PknsUegtAvu6jzYKe5UJkUYKfgSI1v4Wo1cOWfkO7nuSIfYbb++M3voP3g==
X-Received: by 2002:a05:6870:8c1d:b0:144:ee4d:b687 with SMTP id ec29-20020a0568708c1d00b00144ee4db687mr10323543oab.19.1671041182006;
        Wed, 14 Dec 2022 10:06:22 -0800 (PST)
Received: from localhost.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id y8-20020a056870b00800b0013b0b19100fsm3034008oae.32.2022.12.14.10.06.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Dec 2022 10:06:21 -0800 (PST)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org, tzimmermann@suse.de,
        mripard@kernel.org, maarten.lankhorst@linux.intel.com,
        heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, daniel@ffwll.ch, airlied@gmail.com,
        sam@ravnborg.org, thierry.reding@gmail.com,
        linus.walleij@linaro.org, Chris Morgan <macromorgan@hotmail.com>,
        Maya Matuszczyk <maccraft123mc@gmail.com>
Subject: [PATCH V5 2/4] dt-bindings: display: panel: Add Magnachip D53E6EA8966
Date:   Wed, 14 Dec 2022 12:06:09 -0600
Message-Id: <20221214180611.109651-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221214180611.109651-1-macroalpha82@gmail.com>
References: <20221214180611.109651-1-macroalpha82@gmail.com>
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

Add documentation for Magnachip D53E6EA8966 based panels such as the
Samsung AMS495QA01 panel.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
---
 .../display/panel/magnachip,d53e6ea8966.yaml  | 62 +++++++++++++++++++
 1 file changed, 62 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/magnachip,d53e6ea8966.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/magnachip,d53e6ea8966.yaml b/Documentation/devicetree/bindings/display/panel/magnachip,d53e6ea8966.yaml
new file mode 100644
index 000000000000..0a57a303a758
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/magnachip,d53e6ea8966.yaml
@@ -0,0 +1,62 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/samsung,ams495qa01.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Magnachip D53E6EA8966 based display panel
+
+description: |
+  Magnachip D53E6EA8966 based display panels, such as the one found on
+  the Anbernic RG503 that is combined with a 940x544 OLED Samsung
+  AMS495QA01.
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

