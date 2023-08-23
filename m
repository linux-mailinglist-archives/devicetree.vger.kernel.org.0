Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 70FDC785695
	for <lists+devicetree@lfdr.de>; Wed, 23 Aug 2023 13:15:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234383AbjHWLPm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Aug 2023 07:15:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44818 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234374AbjHWLPl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Aug 2023 07:15:41 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 504E8E5A
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 04:15:36 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2bcb89b476bso54975201fa.1
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 04:15:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692789334; x=1693394134;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6jKJ9K8AESLKQZ+HE5HtynW9aPvpkrDN9h2vHMA4KaM=;
        b=TRF/DSn+3kfBHUd+H6144IL3A/Usj38y4AMqzr1lEHnlB6j4WAz2Slq6fQY63MkaB5
         zaYVQGjsfPlgC0RmUXrhX38srlMt5mPWG6RypFk64MCxvB+P5nAYrfjlVv/eVYtBfGo8
         iHs7mzYFAgtT/Y0Jva0pNwEHxBWdOo7GL3NZHX87/vr+0vFSmshV/dXJHPuqAgCvtK2z
         xfLhRgReYd2TfzWUeAQNfxQqdKITgta5+0NJ9ztTw5Yghqz2msCWH0+SrJUWWJdbYWC+
         ikxWScIr8K5hUOcr0ksUGBNTrjFCU5P71d6xeJn6mLdezsUdEQavSGBwYMrtd/MipwRj
         USEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692789334; x=1693394134;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6jKJ9K8AESLKQZ+HE5HtynW9aPvpkrDN9h2vHMA4KaM=;
        b=JqPqqIuQkxJFOCtNsJPsudz3U11SE6sPWxlJE6hQ/cY1aAgJtCO5xzw9Ah4xbVxIru
         kEimuYd0wc4/rPftthmMem+XMuOckq6CyuRehm2YphdpNI/fxcqDGmrfLMyU1WXi04Ae
         XYtQjCuTZvKhnvSgwGht+dq7Zm++Fo6mcYNp8vX6xRK4RUth28QUugPcYBZXX6U2GKnz
         tSPo9WsWXJgcRjFLEtcGH2KRSmc5+jnXjsb25XmwJo8bDZNkkxTWow7n0XyaOOnuvSMy
         n9XE3265BUDCWw3XzBIo+XG7Gp/0PNXKxKKyq9aU42TtbhA19Pjv1kWDXWjTBfYq9Wr+
         A3KQ==
X-Gm-Message-State: AOJu0YxBoIzKgqAxxiExnlKj2i51BREKn6vSBK8QseJOAad5IXms0xXN
        CxiDUbzsA2We3KrM7pd4DJV8S7FVcEiU5NNyZ23JLQ==
X-Google-Smtp-Source: AGHT+IHvIgWzyNGDBNZE9SU75RNUPt3W4F5eihUdjUz0iWSRB7x2+YYoa9SCs9v50tbbSREroE9/ow==
X-Received: by 2002:a2e:8957:0:b0:2b6:e2c1:6cdb with SMTP id b23-20020a2e8957000000b002b6e2c16cdbmr10018545ljk.51.1692789334347;
        Wed, 23 Aug 2023 04:15:34 -0700 (PDT)
Received: from [192.168.1.101] (abyj76.neoplus.adsl.tpnet.pl. [83.9.29.76])
        by smtp.gmail.com with ESMTPSA id r16-20020a2e80d0000000b002b6ffa50896sm3148981ljg.128.2023.08.23.04.15.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Aug 2023 04:15:34 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Wed, 23 Aug 2023 13:15:31 +0200
Subject: [PATCH v5 1/2] dt-bindings: interrupt-controller: mpm: Pass MSG
 RAM slice through phandle
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230328-topic-msgram_mpm-v5-1-6e06278896b5@linaro.org>
References: <20230328-topic-msgram_mpm-v5-0-6e06278896b5@linaro.org>
In-Reply-To: <20230328-topic-msgram_mpm-v5-0-6e06278896b5@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawn.guo@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1692789331; l=3285;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=cKEWZHOdaJ0wddQhFxCKdERpAsyn+1yKkVogcTKhfXI=;
 b=iI2hCEU50BlnJX8oKl2wrCEysvxSGrPrns2J0qqmvRJn+hy7uq4TkYQL4Rl5Rz65AzFJ5nbWf
 Pzr/TYspFt2BPu1fZxzm8pibg2UEuwMMuo+cgxnmBE6Yd6QEy3MAAdS
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Due to the wild nature of the Qualcomm RPM Message RAM, we can't really
use 'reg' to point to the MPM's slice of Message RAM without cutting into
an already-defined RPM MSG RAM node used for GLINK and SMEM.

Document passing the register space as a slice of SRAM through the
qcom,rpm-msg-ram property. This also makes 'reg' deprecated.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 .../bindings/interrupt-controller/qcom,mpm.yaml    | 52 +++++++++++++++-------
 1 file changed, 35 insertions(+), 17 deletions(-)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/qcom,mpm.yaml b/Documentation/devicetree/bindings/interrupt-controller/qcom,mpm.yaml
index 509d20c091af..4ce7912d8047 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/qcom,mpm.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/qcom,mpm.yaml
@@ -29,6 +29,12 @@ properties:
     maxItems: 1
     description:
       Specifies the base address and size of vMPM registers in RPM MSG RAM.
+    deprecated: true
+
+  qcom,rpm-msg-ram:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to the APSS MPM slice of the RPM Message RAM
 
   interrupts:
     maxItems: 1
@@ -64,33 +70,45 @@ properties:
 
 required:
   - compatible
-  - reg
   - interrupts
   - mboxes
   - interrupt-controller
   - '#interrupt-cells'
   - qcom,mpm-pin-count
   - qcom,mpm-pin-map
+  - qcom,rpm-msg-ram
 
 additionalProperties: false
 
 examples:
   - |
     #include <dt-bindings/interrupt-controller/arm-gic.h>
-    mpm: interrupt-controller@45f01b8 {
-        compatible = "qcom,mpm";
-        interrupts = <GIC_SPI 197 IRQ_TYPE_EDGE_RISING>;
-        reg = <0x45f01b8 0x1000>;
-        mboxes = <&apcs_glb 1>;
-        interrupt-controller;
-        #interrupt-cells = <2>;
-        interrupt-parent = <&intc>;
-        qcom,mpm-pin-count = <96>;
-        qcom,mpm-pin-map = <2 275>,
-                           <5 296>,
-                           <12 422>,
-                           <24 79>,
-                           <86 183>,
-                           <90 260>,
-                           <91 260>;
+
+    remoteproc-rpm {
+        compatible = "qcom,msm8998-rpm-proc", "qcom,rpm-proc";
+
+        glink-edge {
+            compatible = "qcom,glink-rpm";
+
+            interrupts = <GIC_SPI 168 IRQ_TYPE_EDGE_RISING>;
+            qcom,rpm-msg-ram = <&rpm_msg_ram>;
+            mboxes = <&apcs_glb 0>;
+        };
+
+        mpm: interrupt-controller {
+            compatible = "qcom,mpm";
+            qcom,rpm-msg-ram = <&apss_mpm>;
+            interrupts = <GIC_SPI 197 IRQ_TYPE_EDGE_RISING>;
+            mboxes = <&apcs_glb 1>;
+            interrupt-controller;
+            #interrupt-cells = <2>;
+            interrupt-parent = <&intc>;
+            qcom,mpm-pin-count = <96>;
+            qcom,mpm-pin-map = <2 275>,
+                               <5 296>,
+                               <12 422>,
+                               <24 79>,
+                               <86 183>,
+                               <91 260>;
+        };
     };

-- 
2.42.0

