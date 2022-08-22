Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 69EBD59C29F
	for <lists+devicetree@lfdr.de>; Mon, 22 Aug 2022 17:26:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236540AbiHVP0O (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Aug 2022 11:26:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57022 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236789AbiHVPZl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Aug 2022 11:25:41 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C64F02C11F
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 08:23:03 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id a4so13680513wrq.1
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 08:23:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=CdqhXzll/yPTP4a+BxB8kwx1tdCoLOB1BQPt2q2Ws9s=;
        b=kaAuN2T2i9zs1Lf2M5hF17Kbw7D5mRIIdMIM0/+Lg7pwdypAXFGKvtND3uH8ee0RgJ
         gIAv2yWBK18oBJTCkIsGAL7bTTMIQ4jIDqSFxrjWnN+Bdu/ga+rQN4XFPn2r3+ilSIjr
         UGq9r0STDgkuowgQYU/oIbrKmSosLZ5dPkHkbWsezdkZrp6EiB6i4z/Yuuq5k/USPhhZ
         Th8712/ktu6Lr8Yws5a0GT0Px2lZ9BNLN81bbC5spuTQ9ypkn7C3UpekCzHXfv3OcNH3
         TA44dp30/5rdSjO7sS57OSwWjLF1iHIKVt4i86VsI3wHAVlVCstUBjKzn/OlbgVsVDv5
         y1xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=CdqhXzll/yPTP4a+BxB8kwx1tdCoLOB1BQPt2q2Ws9s=;
        b=kSdBL0VefDuXiBBxODY0igPMXxn0A+S3yZQ2iJ7ZLFDHY9IOfQPpl6YRH+rcXYBg6G
         A079oK2DlqyqE756kd+avFVPvKdOiIYsXrrTCAUZBODCvHe/cO+JhhdBAfMWY5VEUhrV
         KRP53gCqy72wRAA4IVoJhYaON6m3q44nyWkmov7aExizB2U6PXGKa6R3wOGgJrnFtUEd
         BvGt/dEoEKs9Djm1VBp/hix2x2VgImfRHXBGIm7KTSNOl2vvYEG+c36mrLxNXMt1qUfB
         JYWSyVmYx6BHyENY36z7ZSeb09z/x3rhCNGc51YFTRaD//UugnlsQyDYoUsJJ36gZFCW
         HLCQ==
X-Gm-Message-State: ACgBeo3wfRbMT1jsGpkT1+tBNgB5WVENAaEVE3E5EFxJpXRvCu6JR6V0
        u6nCyZqk6yJZbB6ovv/VGMe4Uw==
X-Google-Smtp-Source: AA6agR4pFOq0vDK3C+E6J9AMevOZl4Iu3Lajf/WEog5q5+GSMvPjYdo6wCWaomV49XABBZyPXSBTig==
X-Received: by 2002:a5d:5644:0:b0:225:3ae9:e4c3 with SMTP id j4-20020a5d5644000000b002253ae9e4c3mr8142967wrw.148.1661181782389;
        Mon, 22 Aug 2022 08:23:02 -0700 (PDT)
Received: from localhost.localdomain (cpc92880-cmbg19-2-0-cust679.5-4.cable.virginm.net. [82.27.106.168])
        by smtp.gmail.com with ESMTPSA id q11-20020a5d61cb000000b00223b8168b15sm11850350wrv.66.2022.08.22.08.23.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Aug 2022 08:23:02 -0700 (PDT)
From:   Jean-Philippe Brucker <jean-philippe@linaro.org>
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc:     maz@kernel.org, devicetree@vger.kernel.org,
        Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: [PATCH 1/3] dt-bindings: regulator: Fix qcom,spmi-regulator schema
Date:   Mon, 22 Aug 2022 16:22:22 +0100
Message-Id: <20220822152224.507497-2-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20220822152224.507497-1-jean-philippe@linaro.org>
References: <20220822152224.507497-1-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The DT validator reports an error in the schema:

Documentation/devicetree/bindings/regulator/qcom,spmi-regulator.yaml: ignoring, error in schema: patternProperties: ^(5vs[1-2]|(l|s)[1-9][0-9]?|lvs[1-3])$: properties

Move the unevaluatedProperties statement out of the properties section
to fix it.

Fixes: 0b3bbd7646b0 ("regulator: qcom,spmi-regulator: Convert to dtschema")
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 .../devicetree/bindings/regulator/qcom,spmi-regulator.yaml     | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/regulator/qcom,spmi-regulator.yaml b/Documentation/devicetree/bindings/regulator/qcom,spmi-regulator.yaml
index 8b7c4af4b551..faa4af9fd035 100644
--- a/Documentation/devicetree/bindings/regulator/qcom,spmi-regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/qcom,spmi-regulator.yaml
@@ -35,6 +35,7 @@ patternProperties:
     description: List of regulators and its properties
     type: object
     $ref: regulator.yaml#
+    unevaluatedProperties: false
 
     properties:
       qcom,ocp-max-retries:
@@ -100,8 +101,6 @@ patternProperties:
           SAW controlled gang leader. Will be configured as SAW regulator.
         type: boolean
 
-      unevaluatedProperties: false
-
 required:
   - compatible
 
-- 
2.37.1

