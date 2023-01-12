Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 98CEB667DD4
	for <lists+devicetree@lfdr.de>; Thu, 12 Jan 2023 19:20:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240488AbjALSUa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Jan 2023 13:20:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240385AbjALSTL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Jan 2023 13:19:11 -0500
Received: from mail-oa1-x2a.google.com (mail-oa1-x2a.google.com [IPv6:2001:4860:4864:20::2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E68AFB7D1
        for <devicetree@vger.kernel.org>; Thu, 12 Jan 2023 09:54:05 -0800 (PST)
Received: by mail-oa1-x2a.google.com with SMTP id 586e51a60fabf-14fb7fdb977so19658059fac.12
        for <devicetree@vger.kernel.org>; Thu, 12 Jan 2023 09:54:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dgMx+QidzWwZB9d8EFxiQBvCTRSPbMX2JTxiBtWNFyk=;
        b=jvSE9f+Bm4PM6i8gp+gG4lmnpImnH3/NoZWA86JpoIpZsIyfAv3iy/IcwO742mXB3u
         /zwAgiKkKw69OmqnlJQwdbOzQXySY40V3rlIB/jwkae/+gsxQSqZCTJQx/gZauR3s428
         EDAxO/BBILo+PDAjVT+iilsVBqYbiQuAmWLcb7/qcuz1ksyDL6fveCJf54EUvW7PcbYx
         +URrq4S29msEGO3LZ0hAgBNFAFIvRYoBY7ycyujotelk4tS86PVtpY0IJhX4TXuRu8f0
         5eBQzT9bl59CeqxMTtCfVOaiMf50aMfIbuFjq7ug/tTKiChesrZSAbda3CKBjt5uKMHo
         icGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dgMx+QidzWwZB9d8EFxiQBvCTRSPbMX2JTxiBtWNFyk=;
        b=42FfKCtltVoT8uvmIeT4DVRgBBgXNhR2FzQdvNQ0IEjzVQawWTcZ4zLtIHxEzvm2dh
         kDm4kPEtq1YYQfjPhHWPDCIlRsOQ8ZAQTSEyjgyDAefYgIRMJO/GpnpDksNshmFjn54Z
         2tOI803RiVIeNox3vR2j9tjSF5DPHDg0zcvQ4Gofw/4nZrMGuNRFiAp9kx9fSxBqGk5C
         27jsG+fYJdPZz8EhU23a3woyup2b36TVU7aHMnA6N8bbTUyGoYAUH1E6LsHfOJsSLYqa
         TuonchXl47bdI/m2ihninckxSnHXNgIfhekt0WJm+QZPY+c+dCy7SK2/gpOKlT5+zVQO
         2LUQ==
X-Gm-Message-State: AFqh2krKwrbxkuw44N7dut7HOJEc+q5giOagzyvMPakAALd4RE3A89wm
        UK9zF6A5013B05xg8WaQvtg=
X-Google-Smtp-Source: AMrXdXsEeZ++yki3Zow70/z39R4DHq5FMuMU/XBn8Ia0aX+tI4LICosOB8DxRU6z5e6gylKLEcSwzQ==
X-Received: by 2002:a05:6870:3e0e:b0:150:878c:d4c with SMTP id lk14-20020a0568703e0e00b00150878c0d4cmr22371019oab.3.1673546045296;
        Thu, 12 Jan 2023 09:54:05 -0800 (PST)
Received: from localhost.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id v17-20020a05687105d100b0014866eb34cesm9317049oan.48.2023.01.12.09.54.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Jan 2023 09:54:05 -0800 (PST)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     dri-devel@lists.freedesktop.org
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linus.walleij@linaro.org, maccraft123mc@gmail.com,
        tzimmermann@suse.de, mripard@kernel.org,
        maarten.lankhorst@linux.intel.com, heiko@sntech.de,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
        thierry.reding@gmail.com, Chris Morgan <macromorgan@hotmail.com>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH V10 2/4] dt-bindings: display: panel: Add Samsung AMS495QA01
Date:   Thu, 12 Jan 2023 11:53:56 -0600
Message-Id: <20230112175358.421975-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230112175358.421975-1-macroalpha82@gmail.com>
References: <20230112175358.421975-1-macroalpha82@gmail.com>
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

