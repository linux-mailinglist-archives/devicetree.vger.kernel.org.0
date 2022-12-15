Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 52E2464E155
	for <lists+devicetree@lfdr.de>; Thu, 15 Dec 2022 19:52:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230504AbiLOSwa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Dec 2022 13:52:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46980 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230467AbiLOSwZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Dec 2022 13:52:25 -0500
Received: from mail-oa1-x2a.google.com (mail-oa1-x2a.google.com [IPv6:2001:4860:4864:20::2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7077937FB1
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 10:52:20 -0800 (PST)
Received: by mail-oa1-x2a.google.com with SMTP id 586e51a60fabf-1322d768ba7so432835fac.5
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 10:52:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5MuYdw/TKmmfACRBxYwGpprkKtsguH2MTUAVNosMrsw=;
        b=EsXC1CFRIu5XE3KansyZwbZb7jE1sCuVK85dRB5EUL/tBP5HPxbRWXZSKC1Ch6b4H7
         AKfuIu7VNsaEX+ipmv5asB2xobhntEe/QpPaoEHiOW5byJqg6tb9d6eJE++SmuT7+lHH
         qSLNUX92iDTRWoexVLVCDimOKGDQFNhYlXb79X9gs+m6NRfxJIHvBz0oV1z66vOvrHJq
         A+aadhNsjfGHhWA3DgC3bA38GrnK5REZzvr6ObeU8nB85scdaNEANb2pHrnkcubTs1dj
         9sblbJcqdMF57hQ6UrKC05VfCzjb+G6hBE6me/HGVVEu/0tfxdWst4YA37gVN92M1T3P
         bCKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5MuYdw/TKmmfACRBxYwGpprkKtsguH2MTUAVNosMrsw=;
        b=slZDrZYWYaDU5xr7Ea9bqrrB/559ZdLJo8wtQjakMv7uht9Ha56BzPdSApTXmolrF2
         jo696aaVzc61ChGecQDM1bp+eNASy37USaTTTyjjgi+jvvwFx/H+vhrJ40Y5vdEurYeu
         B3vi993RWm2nDYZynpNiwcifDteJDMvrpbDxW+bIK7gigt1IpVTAxIxX8yzMRYgeZpFP
         JGQ6sBpcQZT8iuOU94f7EAIL7LU4IrUeLJHFGRVQSgwJm5VTRj3Xn5P5ul3CeMDrUCRu
         NT/oAUK9cwnrC/qUHswGMoGEnNQ6pgm9nR2GWCCJ//32LsnjLBvmKkrGojq8kTuBgDr3
         g2rQ==
X-Gm-Message-State: ANoB5pmuuzsOer4dRDAQT6bfazfqkb/vAmt0QanaJl4bDh1qOFC7pS2q
        3p041mWMVu1/pSk7o4lRTDY=
X-Google-Smtp-Source: AA0mqf4wcE/8fIZDMVCDOkQEMIihhUoRExOpVnSoMrmfKqR9LU03LgjASXuXaTwuSizCrfnVMpeUyQ==
X-Received: by 2002:a05:6870:f229:b0:141:e1f5:7194 with SMTP id t41-20020a056870f22900b00141e1f57194mr16740332oao.53.1671130339785;
        Thu, 15 Dec 2022 10:52:19 -0800 (PST)
Received: from localhost.localdomain ([76.244.6.13])
        by smtp.gmail.com with ESMTPSA id g11-20020a4ad84b000000b004a09df5a1dbsm72264oov.8.2022.12.15.10.52.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Dec 2022 10:52:19 -0800 (PST)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org, maccraft123mc@gmail.com,
        tzimmermann@suse.de, mripard@kernel.org,
        maarten.lankhorst@linux.intel.com, heiko@sntech.de,
        linux-rockchip@lists.infradead.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
        thierry.reding@gmail.com, linus.walleij@linaro.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V6 2/4] dt-bindings: display: panel: Add Samsung AMS495QA01
Date:   Thu, 15 Dec 2022 12:52:09 -0600
Message-Id: <20221215185211.1560736-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221215185211.1560736-1-macroalpha82@gmail.com>
References: <20221215185211.1560736-1-macroalpha82@gmail.com>
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

