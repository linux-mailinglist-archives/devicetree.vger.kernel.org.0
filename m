Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 417E566A3E1
	for <lists+devicetree@lfdr.de>; Fri, 13 Jan 2023 21:10:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230445AbjAMUKy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Jan 2023 15:10:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44406 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230007AbjAMUKw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Jan 2023 15:10:52 -0500
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com [IPv6:2607:f8b0:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F66A551F9
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 12:10:51 -0800 (PST)
Received: by mail-pf1-x430.google.com with SMTP id s3so14463955pfd.12
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 12:10:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=u9yUG8p2AvsCrfrOo0UvzT5Iu4BONOHKRQnB72b9ZJU=;
        b=uHkwhfvgcFrY265BN+JmcPVnnegGsSZSRHjT558d0FZMEPTETlx205iydLJkvMIvJw
         kYDrf940r/W9uH94T/0Skd8Gw3sfcXr4liP8jTos00gu/6Gbsc9vO5qj6crsVBHJxGIF
         tC3FU6hWnhGMlzUih7vi5n4Jc8oUHDKbCfzSFoQP2maXznteBaq5vLD0x9rJqKVlnBew
         WTfBEdmjAtDqxav5S8LmXyeeoiaOLO8c1UzRXGFhb6Lp2trrOeu9ynBtukjjP5NPrRmP
         TmIa9p3syCRnxYx6wYKT6BL3usc1YRI3uD6fl4VQRxXYLNMCewUU05OsfABcI7Ku4xio
         Evlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=u9yUG8p2AvsCrfrOo0UvzT5Iu4BONOHKRQnB72b9ZJU=;
        b=wjP7jqHOtM2P6SYPPyEmsH2Gpi6TMWbtBK5r3KIu1TGoZWP0awqEBfl35tVoo9p9Be
         v97fYJ0yh3NueohQHGlCZx2vvuAKfEMwIBTAiHmQixmJTcl/W208m3QHFqBc1KvG6pai
         aJNjWehGadWfDd9KXtVy7O0z22vgBDxAXa21noLZ45DvyXAF6sbrXoSKlEYbmdpC0n9+
         bqtVtZBrRsFFeoSJ5Cwq40wN0JY91v1rx0qHDOuG5q/PyY9ki7dm8oKVNopZiS8wsjkl
         Bl/PfesM5skHb7qMd8pWaikau3psiaw09FkcN7FM+HTM8f845gxdwWALzCBC0sfria4h
         pKFw==
X-Gm-Message-State: AFqh2kqb2zVjHRD8GT+VXn15/gPxh7t6dzn7Jh/Yg7MZ8M7OZTkjvIJR
        fM13zs92hjA2FOq6ogp8+LfaVA==
X-Google-Smtp-Source: AMrXdXuBmRg5x89s/bNnjYQ24z0JAk4eLcvnOHCMH2vbSmq8KX+62vt7rBR7qCTY26F+dfD+4N0e6Q==
X-Received: by 2002:a62:84d0:0:b0:58b:bc3a:6234 with SMTP id k199-20020a6284d0000000b0058bbc3a6234mr3325205pfd.11.1673640650860;
        Fri, 13 Jan 2023 12:10:50 -0800 (PST)
Received: from localhost.localdomain ([2401:4900:1c60:63d3:2d69:9f71:187e:f085])
        by smtp.gmail.com with ESMTPSA id d63-20020a623642000000b0057691fb0d37sm13983740pfa.193.2023.01.13.12.10.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jan 2023 12:10:50 -0800 (PST)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Cc:     agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        linux-kernel@vger.kernel.org, bhupesh.linux@gmail.com,
        bhupesh.sharma@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Subject: [PATCH] dt-bindings: qcom: geni-se: Fix '#address-cells' & '#size-cells' related dt-binding error
Date:   Sat, 14 Jan 2023 01:40:38 +0530
Message-Id: <20230113201038.267449-1-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fix the following '#address-cells' & '#size-cells' related
dt-binding error:

   $ make dtbs_check

   From schema: Documentation/devicetree/bindings/soc/qcom/qcom,geni-se.yaml
        arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dtb: geniqup@4ac0000:
		#address-cells:0:0: 2 was expected
	From schema: Documentation/devicetree/bindings/soc/qcom/qcom,geni-se.yaml

Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 Documentation/devicetree/bindings/soc/qcom/qcom,geni-se.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,geni-se.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,geni-se.yaml
index ab4df02052853..7ffce3b676641 100644
--- a/Documentation/devicetree/bindings/soc/qcom/qcom,geni-se.yaml
+++ b/Documentation/devicetree/bindings/soc/qcom/qcom,geni-se.yaml
@@ -36,10 +36,10 @@ properties:
     maxItems: 2
 
   "#address-cells":
-    const: 2
+    enum: [ 1, 2 ]
 
   "#size-cells":
-    const: 2
+    enum: [ 1, 2 ]
 
   ranges: true
 
-- 
2.38.1

