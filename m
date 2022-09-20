Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1F6195BE975
	for <lists+devicetree@lfdr.de>; Tue, 20 Sep 2022 16:59:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230416AbiITO7N (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Sep 2022 10:59:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34764 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230133AbiITO7L (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Sep 2022 10:59:11 -0400
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com [IPv6:2607:f8b0:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8CB3A53D23
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 07:59:10 -0700 (PDT)
Received: by mail-oi1-x22c.google.com with SMTP id n124so4030828oih.7
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 07:59:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=NZC+2ExHC+wGOFhEmV0ISK1oyhctVGyiZ2MQueQNbW8=;
        b=BjTkhAG9wMi2bfo6tFRRYDuKbJU0BhInbItZU66ifvZOohSQ6vhrWBbYNufng8JU3I
         Al4s6GrWUYd0ebNb4pdw3CTAOAJaxY7MB+PwDf/ljczwwgV5SAFY8M2NRNPfihn2GJyb
         cxJEBZR5DVZr1wfZxO2qrAMNSxSwW8FkTiGaqYanfnNPx6KIpV/CWU8C7tRJLkvculay
         ucxam/R+3pDkuWL5EBZOiD3D0SEiHjbEkX0zl3+9ZFApX7lHGaw9ztDqOxjjRSTHSIYf
         hvvpBjJGbRp7GZ841onaKE8v9FyIx9LF7U87+jckCYLXUUCdSXIH6Xqytf0s0IKudqb3
         3uVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=NZC+2ExHC+wGOFhEmV0ISK1oyhctVGyiZ2MQueQNbW8=;
        b=KAFKCTdNqu01ejS+++GUSV0nUCjmAPWV6umqznQQKeQ6ZPirQs5NRljfKHmPKtW+i3
         t5DXgSXiUcMSyczYpzJkkYQwXrUdCSSkcmr2SCksODMC0neTEA412RxDxPsbIvTJkLtE
         gJsi/8fK2xZn9Yis0/XLlkS7fZqIFRnNo+v/cRm8FwmatYYOEkfANBs1Xa8qv94yOCKZ
         rIhldFyiCc9d/gLYpxCcDIpQZKbmA+Im9rXPtY53GJOXaOW3mrA7xrTA1wcSPXqCxpWH
         KgzMkTuEyJGG07q0Dz7t7TVLwkalUTIxOSURy8CRr0I8O4UYNsSz8IUj6+qsdDYtqs9N
         sU3g==
X-Gm-Message-State: ACrzQf05hloUdRb4Y5ulVeyEFnJFwvSm/yv40EEeUoT7un24TsMjD7fh
        soXxyIV7vTyhKP9PQK9EIAE=
X-Google-Smtp-Source: AMsMyM4kqhlRB2TP6+RyTJGwJEqtNNoKYTG2leFstt5PhmSqLHWJZCBIof1QnaG+ZLIGpRRMxqlDfQ==
X-Received: by 2002:a05:6808:1aac:b0:34d:8fe6:bada with SMTP id bm44-20020a0568081aac00b0034d8fe6badamr1783207oib.193.1663685949838;
        Tue, 20 Sep 2022 07:59:09 -0700 (PDT)
Received: from wintermute.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id o4-20020a05680803c400b0033e8629b323sm203156oie.35.2022.09.20.07.59.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Sep 2022 07:59:09 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, daniel@ffwll.ch, airlied@linux.ie,
        sam@ravnborg.org, thierry.reding@gmail.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 2/3] dt-bindings: display: panel: Add NewVision NV3051D bindings
Date:   Tue, 20 Sep 2022 09:59:04 -0500
Message-Id: <20220920145905.20595-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220920145905.20595-1-macroalpha82@gmail.com>
References: <20220920145905.20595-1-macroalpha82@gmail.com>
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
---
 .../display/panel/newvision,nv3051d.yaml      | 55 +++++++++++++++++++
 1 file changed, 55 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml b/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
new file mode 100644
index 000000000000..d90bca4171c2
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
@@ -0,0 +1,55 @@
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
+  reg: true
+  backlight: true
+  port: true
+  reset-gpios: true
+  vdd-supply:
+    description: regulator that supplies the vdd voltage
+
+required:
+  - compatible
+  - reg
+  - backlight
+  - vdd-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    dsi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        panel@0 {
+            compatible = "anbernic,rg353p-panel";
+            reg = <0>;
+            backlight = <&backlight>;
+            vdd-supply = <&vcc3v3_lcd>;
+        };
+    };
+
+...
-- 
2.25.1

