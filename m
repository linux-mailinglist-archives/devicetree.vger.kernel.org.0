Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F2AB869AA53
	for <lists+devicetree@lfdr.de>; Fri, 17 Feb 2023 12:29:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230126AbjBQL3P (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Feb 2023 06:29:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43934 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230146AbjBQL3O (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Feb 2023 06:29:14 -0500
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD8DB60F8C
        for <devicetree@vger.kernel.org>; Fri, 17 Feb 2023 03:29:12 -0800 (PST)
Received: by mail-lj1-x231.google.com with SMTP id bx13so786068ljb.3
        for <devicetree@vger.kernel.org>; Fri, 17 Feb 2023 03:29:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zNs2vQo3lLrcKzglv5bVhib1E0B0JYWJk13Jcuaahds=;
        b=OqrocxrwWYfL5lGbp6Ljezuz+33eJkd89GCGdKsCCuMzqRWPC5EJ2rKhvsiddg56cY
         9VoBuMeO0i0uKqBtzl4snMImuVNFe3l2C2uhc9lY5qiCnETQrbHA9H5RU+6kQdexLVhs
         to8ajaKBXJjaFtzLCUMgjnBhUK9csj/DPF1/sP2RV+RaITnWUxWptlorrJj8SU85fdn1
         oRuFbTuoi+e2gJGyBBY13kuC0MzyOgSh0LsKpbC2kuY9jrkF2f3j++8k3ZzE/NAob6at
         xM7m75h1lov/BQy4TaaGNpEkMsftlzkEuj4w4V8U1kYEHlu3fHrNblvycCkC4QNn2JkO
         NjdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zNs2vQo3lLrcKzglv5bVhib1E0B0JYWJk13Jcuaahds=;
        b=bOWMi+q5JsYw25JCKJ3cxsQhzsSj34qv6sYhKlwmCKodg7XDoz4KyqN4oHj6PnAvj0
         tJzz3Du/DuPSgANO7V6tkjR1acXa1SxLevO9u7Ev1As7Nn6uUGnA9mLpdS6Pyr4xukGF
         1vTEov+JqLd+f2SzCyrDx934W7INJ/4i2zdF7ZVyGyahhT/vu2/cPNCs6MTXy9kUJQYS
         cNAWzsGl0tVSqrG0Uqv76XlV27b9UkyWtRmzp2NBB0F80Jat1VCROSHnu9oMxrNPFb0L
         0IMTRQ1HbnxZtoD+I7z9QM094W3oUG6+G1vE3rza4lRm54UZxe2WNh01LePni3aKm1fE
         M/dA==
X-Gm-Message-State: AO0yUKW7NC30I4o8CpPyZ8npwO2gyTjiyY5oQoamFn32bEQvGYBWNMtf
        O1nrC0JZ/qXkGq8Zsl16MQI89g==
X-Google-Smtp-Source: AK7set81u41zfJQV9AdDmWw/82fi4vi52yOxCBdmhRt3iTC5jNu9cUlmqnAtWSTEC82S0qVxqMh6cg==
X-Received: by 2002:a2e:b5d9:0:b0:290:77e9:9bbd with SMTP id g25-20020a2eb5d9000000b0029077e99bbdmr2274283ljn.9.1676633351215;
        Fri, 17 Feb 2023 03:29:11 -0800 (PST)
Received: from [192.168.1.101] (abxh117.neoplus.adsl.tpnet.pl. [83.9.1.117])
        by smtp.gmail.com with ESMTPSA id t6-20020a2e9546000000b00267232d0652sm564505ljh.46.2023.02.17.03.29.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Feb 2023 03:29:10 -0800 (PST)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Fri, 17 Feb 2023 12:29:07 +0100
Subject: [PATCH 1/2] dt-bindings: display/panel: Add Lenovo NT36523W BOE
 panel
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230217-topic-lenovo-panel-v1-1-9d7ee1602089@linaro.org>
References: <20230217-topic-lenovo-panel-v1-0-9d7ee1602089@linaro.org>
In-Reply-To: <20230217-topic-lenovo-panel-v1-0-9d7ee1602089@linaro.org>
To:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1676633349; l=1927;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=9RfuxhpRFz2/QmkCIpkPslVFnzg6JhJYl/h6DFFCsbE=;
 b=Q3iNOeETVlZOsQu8rH9tZfomlp4EESrQCCX5l11srlq88Bdmd8/XCtd+SK0wZf8bvZmgceCXR7NC
 VanJlPBqC1tQHu9ivaS+kb975TUDPfFWNRmGTnMZEIIMGTbynDsI
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add bindings for the 2000x1200px IPS panel found on Lenovo Tab P11/
XiaoXin Pad devices.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 .../display/panel/lenovo,nt36523w-boe-j606.yaml    | 60 ++++++++++++++++++++++
 1 file changed, 60 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/lenovo,nt36523w-boe-j606.yaml b/Documentation/devicetree/bindings/display/panel/lenovo,nt36523w-boe-j606.yaml
new file mode 100644
index 000000000000..43dcbe3f9f30
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/lenovo,nt36523w-boe-j606.yaml
@@ -0,0 +1,60 @@
+# SPDX-License-Identifier: GPL-2.0-only or BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/lenovo,nt36523w-boe-j606.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NT36523W BOE panel found on Lenovo J606 devices
+
+maintainers:
+  - Konrad Dybcio <konrad.dybcio@linaro.org>
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    const: lenovo,nt36523w-boe-j606
+
+  reg:
+    maxItems: 1
+    description: DSI virtual channel
+
+  vddio-supply: true
+  reset-gpios: true
+  rotation: true
+  port: true
+
+additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - vddio-supply
+  - reset-gpios
+  - port
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    dsi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        panel@0 {
+            compatible = "lenovo,nt36523w-boe-j606";
+            reg = <0>;
+
+            reset-gpios = <&tlmm 82 GPIO_ACTIVE_LOW>;
+            vddio-supply = <&pm6125_l9>;
+
+            rotation = <180>;
+
+            port {
+                panel0_in: endpoint {
+                    remote-endpoint = <&mdss_dsi0_out>;
+                };
+            };
+        };
+    };
+...

-- 
2.39.1

