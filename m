Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6C65F678049
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 16:46:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232323AbjAWPqO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 10:46:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52522 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232875AbjAWPqO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 10:46:14 -0500
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com [IPv6:2607:f8b0:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 461D75592
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 07:46:13 -0800 (PST)
Received: by mail-oi1-x22a.google.com with SMTP id p133so10689542oig.8
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 07:46:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Nqapi86m5ALZWy/RQhVMucbK8z+wXggnyArRlewaq/U=;
        b=Qwe0skCavY5qRbDu2jiFMgzR4z5C2zb8bV/cJjwhIH8Vq/O2+H0iUxq7vDmWdQrUMg
         DjuacQNgoSwClV416+YOxN+aNzhehoYeQnUy79hFZjMcEKWUFyWtUED8FkT02rkFe2F5
         wMvDGL9BxIasMI+cvksJ3sPSiDJVcYejoV5LbN0uZTsqJwzmxZc5+gk7vL//rAFE2Q1e
         PQ6CQKQ5LxXv0hbad7rBsq8o0cHN8DFeD1uUY8ZZrrVQ2AC3EqAlCmm6uDipPR5RHo/0
         bhD0m2H7QDCQ7MyDk6c7pE6hzRXcjgE4XJOTJxB3ep1mhBLPX9ioVH4nNHfKxcD8vYXr
         qHqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Nqapi86m5ALZWy/RQhVMucbK8z+wXggnyArRlewaq/U=;
        b=fru792d2KtK+FPQXv7laSEovjzhnh55d4J1+YRY3xYBR4DmXEFH+b7O3VoJdvHk3K/
         fDomnVNZXbRtycLCXe8xRDMaLhmCc2EXxh9kpc25JN/lz3LWM1mVFS/6iyrrrRrOg7FT
         Jfe6NPk7pX8yPsSHgOm3yBmX+kbgUy+C6EjTZFRO2vtSZHMU6QREi5dDs/fUmhsREMHr
         aD+RN06c5oIrVq9e5h3bpSyh7sQd5Cn6SLb8NUgMd5uKVxoTPVIdDonqtBacHA52+y+z
         5koOHS0M/od24fchhA91X/0YQs+PXqyyUfO+QhOSvRk6gHy25BDcURzWMpD67Ro8n2fw
         ul7g==
X-Gm-Message-State: AFqh2kouNRPCeJRSFejwys/RiCXTz9bxfnnhLpI4ghQYKUqAeBM+veg6
        /7wWH6v5BteYbZx0krrFVBA=
X-Google-Smtp-Source: AMrXdXuuJJhivBWYpkIzc0L3kGnI/JKXyfvnSB76tjIHILIc+VJ/d4YPw9XD+jILhaObH3pkknwayA==
X-Received: by 2002:aca:5c09:0:b0:363:a9b1:54a6 with SMTP id q9-20020aca5c09000000b00363a9b154a6mr10104905oib.40.1674488772598;
        Mon, 23 Jan 2023 07:46:12 -0800 (PST)
Received: from localhost.localdomain ([76.244.6.13])
        by smtp.gmail.com with ESMTPSA id w13-20020a056808140d00b0035e7ed5daa1sm10040132oiv.26.2023.01.23.07.46.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jan 2023 07:46:12 -0800 (PST)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        tzimmermann@suse.de, mripard@kernel.org,
        maarten.lankhorst@linux.intel.com, heiko@sntech.de,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
        thierry.reding@gmail.com, linus.walleij@linaro.org,
        Chris Morgan <macromorgan@hotmail.com>,
        Maya Matuszczyk <maccraft123mc@gmail.com>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH V12 2/4] dt-bindings: display: panel: Add Samsung AMS495QA01
Date:   Mon, 23 Jan 2023 09:46:01 -0600
Message-Id: <20230123154603.1315112-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230123154603.1315112-1-macroalpha82@gmail.com>
References: <20230123154603.1315112-1-macroalpha82@gmail.com>
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

Co-developed-by: Maya Matuszczyk <maccraft123mc@gmail.com>
Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
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

