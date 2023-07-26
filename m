Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E22B3762B8C
	for <lists+devicetree@lfdr.de>; Wed, 26 Jul 2023 08:36:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231748AbjGZGgT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jul 2023 02:36:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54428 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231439AbjGZGgS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jul 2023 02:36:18 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 170EB211B
        for <devicetree@vger.kernel.org>; Tue, 25 Jul 2023 23:36:16 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-51e429e1eabso9339688a12.2
        for <devicetree@vger.kernel.org>; Tue, 25 Jul 2023 23:36:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690353374; x=1690958174;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u7hyD6FB7jSwhDfnPQjFPKkm7jWq+dVGaGrUKrMFbUQ=;
        b=UQv6w9GnbHOfHwGKQNTV0pEDu732yLDFTXHSoANqxUrtcGoZ9F3vJR1TfarmrVKCPU
         3IgDT+2yDRkuxX08/4OzWWI/bgRnjsKlq/ao9PsxuKU4JqOawskNP2BJLSxjM3EAS6Ec
         fpnSGL+anpMFloGvFDm4XmcQxeAiEHI0yLYgIDNgueSNvIH331kGnjbLpDkF82PnQsma
         HtmuQDz1UaGguDsGe9OJ8cgSUa44nQHxTt83FPxOIHkjv5ybDR0i+ngfOrhhOAidJXR5
         R7U2UexBw3HwFbtj/FyZsoZA6MnskTrNachvw2W2MJxrfF+ntCW7umBXFhuQrBotp/h9
         Ac3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690353374; x=1690958174;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=u7hyD6FB7jSwhDfnPQjFPKkm7jWq+dVGaGrUKrMFbUQ=;
        b=Ba7jn/4TdlXXZ7gjCY0BXmvalNXmc0+D9Vf4QIOV9CS7CuEAjmNe96Vu2XUurdo8Ht
         hgn0CcMekZWaPNj6hJzU/57OMSlabHyBhP3fo3LZvZrYaW4QPibL8XBirtFDSdbUCdkr
         c4l7oz+U2Ua6+upfbEjeOxReFfa85mKNSuQ+o7dasWgj1DWkkx5Ba44BovOPXAwuQnSB
         0SrJWbM+doJUJJd7DKixp0BmKrDffPoNZ1xB60fPkxeoyQtko3yeinpIiB+3sCJHU+U6
         0yjxiiPnXkb6H5aI+THNeHVJh78frIOgGeLLgUfoR9pWKKU4mtVRzbyEFvdPzQS/+WWf
         tCBA==
X-Gm-Message-State: ABy/qLbzE2lvNeBUEuZq2TO2tdo6oGd+sHhANm5GucfWKWkKhmAwMrKB
        ZkD3H4UWSvqP4WOxQSQoE0a1Dg==
X-Google-Smtp-Source: APBJJlGNUorNqE2DstQnFDWhicb5Jae+iN7Cjh5GOWyBur4yWaC85W7KTpb5LbBqaIdHGkSMDiPwLg==
X-Received: by 2002:aa7:cd48:0:b0:522:5591:d748 with SMTP id v8-20020aa7cd48000000b005225591d748mr681596edw.15.1690353374542;
        Tue, 25 Jul 2023 23:36:14 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id t24-20020aa7d718000000b0051de20c59d7sm8336270edq.15.2023.07.25.23.36.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jul 2023 23:36:14 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        pascal Paillet <p.paillet@foss.st.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 2/2] dt-bindings: mfd: stericsson,db8500-prcmu: Add missing unevaluatedProperties for each regulator
Date:   Wed, 26 Jul 2023 08:36:10 +0200
Message-Id: <20230726063610.5394-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230726063610.5394-1-krzysztof.kozlowski@linaro.org>
References: <20230726063610.5394-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Each regulator node, which references common regulator.yaml schema,
should disallow additional or unevaluated properties.  Otherwise
mistakes in properties will go unnoticed.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v2:
1. None
---
 .../bindings/mfd/stericsson,db8500-prcmu.yaml | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/stericsson,db8500-prcmu.yaml b/Documentation/devicetree/bindings/mfd/stericsson,db8500-prcmu.yaml
index 1d4d88f7e82d..678a6c0fd7d6 100644
--- a/Documentation/devicetree/bindings/mfd/stericsson,db8500-prcmu.yaml
+++ b/Documentation/devicetree/bindings/mfd/stericsson,db8500-prcmu.yaml
@@ -72,44 +72,52 @@ properties:
           main voltage domain for the chip.
         type: object
         $ref: ../regulator/regulator.yaml#
+        unevaluatedProperties: false
 
       db8500_varm:
         description: The voltage for the ARM Cortex A-9 CPU.
         type: object
         $ref: ../regulator/regulator.yaml#
+        unevaluatedProperties: false
 
       db8500_vmodem:
         description: The voltage for the modem subsystem.
         type: object
         $ref: ../regulator/regulator.yaml#
+        unevaluatedProperties: false
 
       db8500_vpll:
         description: The voltage for the phase locked loop clocks.
         type: object
         $ref: ../regulator/regulator.yaml#
+        unevaluatedProperties: false
 
       db8500_vsmps1:
         description: Also known as VIO12, is a step-down voltage regulator
           for 1.2V I/O. SMPS means System Management Power Source.
         type: object
         $ref: ../regulator/regulator.yaml#
+        unevaluatedProperties: false
 
       db8500_vsmps2:
         description: Also known as VIO18, is a step-down voltage regulator
           for 1.8V I/O. SMPS means System Management Power Source.
         type: object
         $ref: ../regulator/regulator.yaml#
+        unevaluatedProperties: false
 
       db8500_vsmps3:
         description: This is a step-down voltage regulator
           for 0.87 thru 1.875V I/O. SMPS means System Management Power Source.
         type: object
         $ref: ../regulator/regulator.yaml#
+        unevaluatedProperties: false
 
       db8500_vrf1:
         description: RF transciever voltage regulator.
         type: object
         $ref: ../regulator/regulator.yaml#
+        unevaluatedProperties: false
 
       db8500_sva_mmdsp:
         description: Smart Video Accelerator (SVA) multimedia DSP (MMDSP)
@@ -117,18 +125,21 @@ properties:
           for video encoding and decoding.
         type: object
         $ref: ../regulator/regulator.yaml#
+        unevaluatedProperties: false
 
       db8500_sva_mmdsp_ret:
         description: Smart Video Accelerator (SVA) multimedia DSP (MMDSP)
           voltage regulator for retention mode.
         type: object
         $ref: ../regulator/regulator.yaml#
+        unevaluatedProperties: false
 
       db8500_sva_pipe:
         description: Smart Video Accelerator (SVA) multimedia DSP (MMDSP)
           voltage regulator for the data pipe.
         type: object
         $ref: ../regulator/regulator.yaml#
+        unevaluatedProperties: false
 
       db8500_sia_mmdsp:
         description: Smart Image Accelerator (SIA) multimedia DSP (MMDSP)
@@ -136,18 +147,21 @@ properties:
           for image encoding and decoding.
         type: object
         $ref: ../regulator/regulator.yaml#
+        unevaluatedProperties: false
 
       db8500_sia_mmdsp_ret:
         description: Smart Image Accelerator (SIA) multimedia DSP (MMDSP)
           voltage regulator for retention mode.
         type: object
         $ref: ../regulator/regulator.yaml#
+        unevaluatedProperties: false
 
       db8500_sia_pipe:
         description: Smart Image Accelerator (SIA) multimedia DSP (MMDSP)
           voltage regulator for the data pipe.
         type: object
         $ref: ../regulator/regulator.yaml#
+        unevaluatedProperties: false
 
       db8500_sga:
         description: Smart Graphics Accelerator (SGA) voltage regulator.
@@ -155,6 +169,7 @@ properties:
           accelerator block.
         type: object
         $ref: ../regulator/regulator.yaml#
+        unevaluatedProperties: false
 
       db8500_b2r2_mcde:
         description: Blit Blend Rotate and Rescale (B2R2), and Multi-Channel
@@ -162,28 +177,33 @@ properties:
           blocks.
         type: object
         $ref: ../regulator/regulator.yaml#
+        unevaluatedProperties: false
 
       db8500_esram12:
         description: Embedded Static RAM (ESRAM) 1 and 2 voltage regulator.
         type: object
         $ref: ../regulator/regulator.yaml#
+        unevaluatedProperties: false
 
       db8500_esram12_ret:
         description: Embedded Static RAM (ESRAM) 1 and 2 voltage regulator for
           retention mode.
         type: object
         $ref: ../regulator/regulator.yaml#
+        unevaluatedProperties: false
 
       db8500_esram34:
         description: Embedded Static RAM (ESRAM) 3 and 4 voltage regulator.
         type: object
         $ref: ../regulator/regulator.yaml#
+        unevaluatedProperties: false
 
       db8500_esram34_ret:
         description: Embedded Static RAM (ESRAM) 3 and 4 voltage regulator for
           retention mode.
         type: object
         $ref: ../regulator/regulator.yaml#
+        unevaluatedProperties: false
 
     required:
       - compatible
-- 
2.34.1

