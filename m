Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AAC9C629947
	for <lists+devicetree@lfdr.de>; Tue, 15 Nov 2022 13:53:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232695AbiKOMxT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Nov 2022 07:53:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59650 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232617AbiKOMxS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Nov 2022 07:53:18 -0500
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 54A2727FC3
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 04:53:17 -0800 (PST)
Received: by mail-lf1-x12a.google.com with SMTP id d6so24230483lfs.10
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 04:53:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P7Fq1FCtyMG04pZ3N5J1xdkdEifZzPEkicokXK7IZsM=;
        b=HFeCv5xRltnADl564uNdQ1Jnuv1UhuzSw7+EUjEGXddQV4BTeXCMhUXXlx8fF6B9+F
         PZrEMZpzY2mpm3tWzifZRO/svSFZt0s90+LqOG8TSFZ5vYdQqbU6gowl/k0K3Z2P35g9
         7YvuEskqWcYuzL+l4UnCDoAspEcxihiHWcq63+ol55DNdFcLnepY0nJrBJpJ2MtUWLJd
         ArrqXW8rvhoo3EGAI+W9v582a2eXErEpvLAYQYbQ5qmoDwhnu8BFm9FfSWFy1ExxoACg
         r9TA0GBQ/RcJByZ/bWcBRdQ7r2xYmMmM6i497DkwQt6ZWrL79aEeMtFzescYkV+MaJd/
         0ecg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P7Fq1FCtyMG04pZ3N5J1xdkdEifZzPEkicokXK7IZsM=;
        b=ewgjZnDKQ3NwIjt+R7Yty8YK3ylshwwfl6oEURoXdcuGylSUqzCeT8UK4na6T30Ao5
         ZhgtLc8h5UYBEUIDaRjGtbj89E7N61ZlbKqqALlezFtq7CYdg6NnE5BAOWApiwL5b1vT
         Ga7t5rKzgfFfAq/1qW2Lf+0+0NFIoClCSPb4ED9NwyyioheJewUEh/B5jGQEqiEIkdnQ
         6wJ6z2gjil0YJz9zTnp7gnam+r/V8oeWAjeu9ZcOcRvCXYxrhRdFgVTG2Z7orvEwb8SF
         64K0d3HWFrnE0rHX+SdEJB1TFqJUXhF92DL3xNodWKp+zt3274JWRzmdI+l7/kzImugx
         F2SQ==
X-Gm-Message-State: ANoB5plUedgq7deZcx3plrYQrNrxVVIByV4C+fJzOmzeqzwKaenoeLr7
        Gp0s9/gFHkLXo67EArUPmxlI4A==
X-Google-Smtp-Source: AA0mqf76Uwnh+P/zCsp9u/ilh8sDWAscM4fXnqtEGAzuB433bQVF1uXvWX4tSKzwfgGERt+0dWQsNw==
X-Received: by 2002:ac2:5ccb:0:b0:4ae:aa99:849c with SMTP id f11-20020ac25ccb000000b004aeaa99849cmr6183458lfq.592.1668516795527;
        Tue, 15 Nov 2022 04:53:15 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id d8-20020a056512368800b0049110ba325asm2177224lfs.158.2022.11.15.04.53.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Nov 2022 04:53:14 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Stanimir Varbanov <svarbanov@mm-sol.com>,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/4] dt-bindings: PCI: qcom: unify clock order between MSM8996 and MSM8998
Date:   Tue, 15 Nov 2022 13:53:08 +0100
Message-Id: <20221115125310.184012-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221115125310.184012-1-krzysztof.kozlowski@linaro.org>
References: <20221115125310.184012-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

MSM8996 and MSM8998 use the same clocks, so use one order to make the
binding simpler.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/pci/qcom,pcie.yaml    | 24 ++++++-------------
 1 file changed, 7 insertions(+), 17 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
index 0411e2e67661..ee719e879ce3 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
@@ -306,27 +306,17 @@ allOf:
             enum:
               - qcom,pcie-msm8996
     then:
-      oneOf:
-        - properties:
-            clock-names:
-              items:
-                - const: pipe # Pipe Clock driving internal logic
-                - const: aux # Auxiliary (AUX) clock
-                - const: cfg # Configuration clock
-                - const: bus_master # Master AXI clock
-                - const: bus_slave # Slave AXI clock
-        - properties:
-            clock-names:
-              items:
-                - const: pipe # Pipe Clock driving internal logic
-                - const: bus_master # Master AXI clock
-                - const: bus_slave # Slave AXI clock
-                - const: cfg # Configuration clock
-                - const: aux # Auxiliary (AUX) clock
       properties:
         clocks:
           minItems: 5
           maxItems: 5
+        clock-names:
+          items:
+            - const: pipe # Pipe Clock driving internal logic
+            - const: aux # Auxiliary (AUX) clock
+            - const: cfg # Configuration clock
+            - const: bus_master # Master AXI clock
+            - const: bus_slave # Slave AXI clock
         resets: false
         reset-names: false
 
-- 
2.34.1

