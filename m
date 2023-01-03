Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1800765C1D2
	for <lists+devicetree@lfdr.de>; Tue,  3 Jan 2023 15:23:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237757AbjACOWe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Jan 2023 09:22:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39092 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237676AbjACOWd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Jan 2023 09:22:33 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6905125C3
        for <devicetree@vger.kernel.org>; Tue,  3 Jan 2023 06:22:32 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id bs20so27495970wrb.3
        for <devicetree@vger.kernel.org>; Tue, 03 Jan 2023 06:22:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BrQTlFtoTu8he9ydQRdvctc8hmi7ieuddKkLwr03Ix0=;
        b=xHYxZ0jDW2+TBmQ5IAf+o48+WdHcrpuYIJpkEKuoa8Hvb/BQHziGbWUph2B1hstbEU
         uOyZAreWTU3SynAXgs/KUVW609XGxXbjE8SsFSYwTSxphKlGUqg45z2jv+ip4PNysIhJ
         wLWNeS5qSAFdzN+2Z0T6EqzqQ9FX3YK4UKmLI76hIez8PmYQUq1WhrC8nv/0nqFQ/1LF
         PCUBCuC4YGW5VHu3UoRcGpJG8YR3gqXl/ieW1R1rMvOIBWb3ugsRIo02L/g6ewizQvWq
         wZ7p2jYJTssUMdyu0jckxKPj6/vtUUc3Wz+cmmQ/69Fy/D/7ZK2CNhweVpsmgFUl9bvD
         NejA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BrQTlFtoTu8he9ydQRdvctc8hmi7ieuddKkLwr03Ix0=;
        b=sQLibahpXE2lxEOtBTxPd+FiS362tAkHlkVkA2/TMTAJoNYmQlpvmKdCM1ItC/GkdM
         1E8xEvGEgQoxwml2oJ3TpJhc6SZXL1C8pfz/bIiATpe+Tj81d1BEPEAJz9P7mEiO4ov8
         Si92lvkAWr737ubjTyDvEIb3reGo7wQOb9JsmIQNRwXA1D2+N0qq8u6aJ24eRH54vmmH
         vPVm5DDvb9ubesEmgaWnDVpWhk9ZetaVQMYojnq/sVKcvUgD+0pGXCzy4i6hQ2ojsebn
         fp+j81bE71O21BF7JlI0J4b14ozq9Rwks0/wbUhf6Q4eS8IyquLBmWufg61Yc1lsgN8q
         oCRQ==
X-Gm-Message-State: AFqh2krMWBUEqri4iwVp/AdA47yeT9U6eVE4cflG4WeuuDGC88DNqlyD
        rJvSeJP5ixZ7fs4O4Sj0INYTTg==
X-Google-Smtp-Source: AMrXdXtnzaQHGwPx//u/Ga79fT/ywgStvs4FSMtqKeiQ5XHpCdrPdwXKkzKkcqbwm/wMjYulEUQyaQ==
X-Received: by 2002:adf:cc81:0:b0:275:ae5c:d448 with SMTP id p1-20020adfcc81000000b00275ae5cd448mr26043702wrj.13.1672755751009;
        Tue, 03 Jan 2023 06:22:31 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id i6-20020a5d55c6000000b00283c7b5ee3bsm20182163wrw.101.2023.01.03.06.22.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jan 2023 06:22:30 -0800 (PST)
From:   Neil Armstrong <neil.armstrong@linaro.org>
Date:   Tue, 03 Jan 2023 15:22:27 +0100
Subject: [PATCH 1/2] dt-bindings: display: panel: document the Visionox
 VTDR6130 AMOLED DSI Panel bindings
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230103-topic-sm8550-upstream-vtdr6130-panel-v1-1-9b746b858378@linaro.org>
References: <20230103-topic-sm8550-upstream-vtdr6130-panel-v1-0-9b746b858378@linaro.org>
In-Reply-To: <20230103-topic-sm8550-upstream-vtdr6130-panel-v1-0-9b746b858378@linaro.org>
To:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.11.1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document the 1080x2400 Visionox VTDR6130 AMOLED DSI Panel bindings.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../bindings/display/panel/visionox,vtdr6130.yaml  | 53 ++++++++++++++++++++++
 1 file changed, 53 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/visionox,vtdr6130.yaml b/Documentation/devicetree/bindings/display/panel/visionox,vtdr6130.yaml
new file mode 100644
index 000000000000..49e2fd4b4e99
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/visionox,vtdr6130.yaml
@@ -0,0 +1,53 @@
+# SPDX-License-Identifier: GPL-2.0-only or BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/visionox,vtdr6130.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Visionox VTDR6130 AMOLED DSI Panel
+
+maintainers:
+  - Neil Armstrong <neil.armstrong@linaro.org>
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    const: visionox,vtdr6130
+
+  vddio-supply: true
+  vci-supply: true
+  vdd-supply: true
+  port: true
+  reset-gpios: true
+
+additionalProperties: false
+
+required:
+  - compatible
+  - vddio-supply
+  - vci-supply
+  - vdd-supply
+  - reset-gpios
+  - port
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    panel {
+        compatible = "visionox,vtdr6130";
+
+        vddio-supply = <&vreg_l12b_1p8>;
+        vci-supply = <&vreg_l13b_3p0>;
+        vdd-supply = <&vreg_l11b_1p2>;
+
+        reset-gpios = <&tlmm 133 GPIO_ACTIVE_LOW>;
+
+        port {
+            panel0_in: endpoint {
+                remote-endpoint = <&dsi0_out>;
+            };
+        };
+    };
+...

-- 
2.34.1
