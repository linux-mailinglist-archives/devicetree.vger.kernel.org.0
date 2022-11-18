Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7D44E62EFE2
	for <lists+devicetree@lfdr.de>; Fri, 18 Nov 2022 09:45:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241603AbiKRIpg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Nov 2022 03:45:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36666 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241497AbiKRIpT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Nov 2022 03:45:19 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2FF997A8F
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 00:45:10 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id d9so8147911wrm.13
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 00:45:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pdA2WwhFWByaRGVKICxP7e1l/2IRmgbsS7SgJKJiYvA=;
        b=TLeWC/zjXEMVGnjuNeQqlxZz++xObGFuXV/aUYwPyS3q7Q52jKPDgvM1x7RBLwUP8Q
         3nrCOr5gpHp3pUQdC6m7MgOygjr+pMhh23UGCEfxEB3M/xStlK4Mw+dXCu6A7rKdAUNn
         lTOja3gdGQmWndlsbCDTQyssb8l3T6w5Z4rjCGfQu73V9ZRmus8gcEJzIT+aDpeeMvXA
         eaLTYr9MPWxwPwkEx+Dap03gbPK1JGc/xEilp+l9xvM3p0PXZ3nSehrUHaSa8ngaZ4S9
         GcoFZ1GrvBD6LmTKfR/Iy7PiLV2BuMkTg0A5fGBM+X0dPw6HBUEsq1LQK02ta2tG448+
         OCqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pdA2WwhFWByaRGVKICxP7e1l/2IRmgbsS7SgJKJiYvA=;
        b=2GUPEvQX88X/vXjte+tArMWGu1AuYKPZYRE/W2WRQArJpRscJZQQ/dw/BkbX1O8J3L
         JV+K2Ee0RSPG/l2ANpCNhwUKiRiz38MWtNFwHdQ9Sn5w8xSLsMjVuIG4Fyh4fydqAvfx
         woC/OsykGeSoqwZOS8zbo7qsbYCUrF+1m8EwYsAr1lTxQjlYW2wl5Nh57yjNQTBStJum
         u17/PiiNIZiRML9OzF4lDKKalPMkufegXbGHKTJlqUjPLHgcBE9LXA/t3IuanGwjDPgo
         U/4yKbTera29eX7Pm49KAEU2gfjlQQcQjd7xD81JmTIbUkQWXFgtcEXqQACJ+x755oBy
         AzPw==
X-Gm-Message-State: ANoB5pn8/hG+wW1Q0c/pzlfqRTqtpZ1rfRZiSJnKL6II7OMUD/KzR4FZ
        aGnOIph2+PeqdsqjMtc+un0usQ==
X-Google-Smtp-Source: AA0mqf584MxLuyk9DtZ0qMBSRXuaJLmVOEdbhrpL6AaRSwm/Adj0Orn+ssbrVWXx94NpyQ2J89yyxg==
X-Received: by 2002:a05:6000:78d:b0:22e:3d63:80bc with SMTP id bu13-20020a056000078d00b0022e3d6380bcmr3851043wrb.30.1668761109439;
        Fri, 18 Nov 2022 00:45:09 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id v18-20020a5d6112000000b00236e834f050sm2960284wrt.35.2022.11.18.00.45.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Nov 2022 00:45:09 -0800 (PST)
From:   Neil Armstrong <neil.armstrong@linaro.org>
Date:   Fri, 18 Nov 2022 09:45:05 +0100
Subject: [PATCH v2 1/6] dt-bindings: qcom: geni-se: document I2C Master Hub wrapper
 variant
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20221114-narmstrong-sm8550-upstream-i2c-master-hub-v2-1-aadaa6997b28@linaro.org>
References: <20221114-narmstrong-sm8550-upstream-i2c-master-hub-v2-0-aadaa6997b28@linaro.org>
In-Reply-To: <20221114-narmstrong-sm8550-upstream-i2c-master-hub-v2-0-aadaa6997b28@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Andy Gross <agross@kernel.org>
Cc:     linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-i2c@vger.kernel.org
X-Mailer: b4 0.10.1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The I2C Master Hub is a stripped down version of the GENI Serial Engine
QUP Wrapper Controller but only supporting I2C serial engines without
DMA support.

Document the variant compatible, forbid UART and SPI sub-nodes,
and remove requirement for the Master AHB clock and iommu property.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../devicetree/bindings/soc/qcom/qcom,geni-se.yaml | 44 +++++++++++++++++++---
 1 file changed, 38 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,geni-se.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,geni-se.yaml
index 2bf5293fc995..ab4df0205285 100644
--- a/Documentation/devicetree/bindings/soc/qcom/qcom,geni-se.yaml
+++ b/Documentation/devicetree/bindings/soc/qcom/qcom,geni-se.yaml
@@ -21,20 +21,19 @@ properties:
   compatible:
     enum:
       - qcom,geni-se-qup
+      - qcom,geni-se-i2c-master-hub
 
   reg:
     description: QUP wrapper common register address and length.
     maxItems: 1
 
   clock-names:
-    items:
-      - const: m-ahb
-      - const: s-ahb
+    minItems: 1
+    maxItems: 2
 
   clocks:
-    items:
-      - description: Master AHB Clock
-      - description: Slave AHB Clock
+    minItems: 1
+    maxItems: 2
 
   "#address-cells":
     const: 2
@@ -81,6 +80,39 @@ patternProperties:
     description: GENI Serial Engine based UART Controller.
     $ref: /schemas/serial/qcom,serial-geni-qcom.yaml#
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: qcom,geni-se-i2c-master-hub
+    then:
+      properties:
+        clock-names:
+          items:
+            - const: s-ahb
+
+        clocks:
+          items:
+            - description: Slave AHB Clock
+
+        iommus: false
+
+      patternProperties:
+        "spi@[0-9a-f]+$": false
+        "serial@[0-9a-f]+$": false
+    else:
+      properties:
+        clock-names:
+          items:
+            - const: m-ahb
+            - const: s-ahb
+
+        clocks:
+          items:
+            - description: Master AHB Clock
+            - description: Slave AHB Clock
+
 additionalProperties: false
 
 examples:

-- 
b4 0.10.1
