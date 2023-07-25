Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 33DDB76187D
	for <lists+devicetree@lfdr.de>; Tue, 25 Jul 2023 14:38:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233100AbjGYMhu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jul 2023 08:37:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233113AbjGYMhs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Jul 2023 08:37:48 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D60AB0
        for <devicetree@vger.kernel.org>; Tue, 25 Jul 2023 05:37:46 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-98377c5d53eso875028366b.0
        for <devicetree@vger.kernel.org>; Tue, 25 Jul 2023 05:37:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690288665; x=1690893465;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0pN5v5BlfbjxvAxmVyTRrm0yTNUVDOCKYwD8QeRlMDc=;
        b=g9MbkZztPFKCArDOKietx7JwTRQGTBLdE0OcCFmgrBWDkIrnV7I93G1srhmrwvBVls
         +4oy+6hsrK91jshFt9wQmVY5+iDN0pJTyz9L1F2qlh6WWdUPX+N0lyQ0U2235CD39MUc
         9wp6QH9XlTZBwT2NhmWdT6MgcsGu+dwfRrKs2YcO0o4rxvQboqTLH9qnDhcY8pUux/xE
         kPCWKNW83hkDvQgbYiKAqPb8oToWW/ANs4v40TlkCJjogBttj80wSEeHUmSXJo+mjMze
         mhToau8mIgCqPS5L5eZg3dmWj3JX4M/3WbRRaNPV8BFdmqr8+65He74OBR25EXp3jaoL
         xMYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690288665; x=1690893465;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0pN5v5BlfbjxvAxmVyTRrm0yTNUVDOCKYwD8QeRlMDc=;
        b=EprhMDVQN1H3YB5cT4FbYNQwkoLW/qdcBMrG/sL8m0T2CNi2Mcq19QphRaIi3/LYFq
         Flm+w4b5Lwwt2Sw4WJKu3aGe4O3JZd49bfnpNRrxXf+D3sMi6tfErKIk1PUtrMKjXJGv
         +RH8+VPqbvvjW9XHjpBIf0nRtU6fDcCuTEe3A/um5zyPC+pD/5eAeYZurCaxX2N5L9hq
         eTE0UL8Ic2KvVkW0C8K4aueYYm4WkXCc0G3YnbMiZVtp6HWb0F1H6TK94vuXFOEFooWQ
         /kmkEz60bDc+cvab36xyLBca0YqcHSugb9ZJ0AoxJUk9XV5xZHteYMOfRlu22cBNQ7kF
         KPmQ==
X-Gm-Message-State: ABy/qLaxu9p1ZSE/QkhorclBL7h7dKzeWvFZfbs8uzPjw8dguFfrcwfv
        m7E1YBJ7UieNj6TxwYiIMYx2YA==
X-Google-Smtp-Source: APBJJlEP57bjZ/oNq/woQd4xMP4dPDFmfvtdYBWXr7HquSTRJjnKHtTl7O3auFiYV3GyLwvkp+OUag==
X-Received: by 2002:a17:906:5189:b0:969:7739:2eb7 with SMTP id y9-20020a170906518900b0096977392eb7mr11946149ejk.4.1690288664921;
        Tue, 25 Jul 2023 05:37:44 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id qx26-20020a170906fcda00b00982cfe1fe5dsm8187480ejb.65.2023.07.25.05.37.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jul 2023 05:37:44 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        pascal Paillet <p.paillet@foss.st.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] dt-bindings: mfd: stericsson,db8500-prcmu: Add missing unevaluatedProperties for each regulator
Date:   Tue, 25 Jul 2023 14:37:40 +0200
Message-Id: <20230725123740.149559-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230725123740.149559-1-krzysztof.kozlowski@linaro.org>
References: <20230725123740.149559-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
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

