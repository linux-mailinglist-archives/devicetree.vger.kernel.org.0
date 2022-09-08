Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2AC7C5B1B5B
	for <lists+devicetree@lfdr.de>; Thu,  8 Sep 2022 13:26:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231209AbiIHL0U (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Sep 2022 07:26:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52038 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231220AbiIHL0S (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Sep 2022 07:26:18 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF0F9D345A
        for <devicetree@vger.kernel.org>; Thu,  8 Sep 2022 04:26:01 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id e16so6262257wrx.7
        for <devicetree@vger.kernel.org>; Thu, 08 Sep 2022 04:26:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=2uCwmHdjg21zPOoZO9GyiM8A7cUULvVI0yDuz4f3uYI=;
        b=dncoAgdXRlqn6xPQpT3Rz/JvkGUvD35uikKY/S8ciePn0uZEXuzAXIPzrL9qcwlGwf
         tPKzT5JqSxIcgjS2aOIFFUPbF9uVC7c8NkqkHYjFhflNVIydqhB71dYTjN8Srs0qS5Uf
         TjYXRXpLl2hhlD/tfhSjhW3NpvvLJzq6whUKSJVj+G8EIwxKeCcDQXLeHwUMcoeNyCPl
         KeXUsdwoOtBvjMfowLxoBfKcWGq61miMU53iapcG1vjZdioSAlPCc3B+SHWt2/2paFi5
         Wv486EySlyO8SO2K64CjABmcKeor1CvxFF1AokBfpNpeko8ASoIpF6MzlkM2VvHkrd2r
         HHvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=2uCwmHdjg21zPOoZO9GyiM8A7cUULvVI0yDuz4f3uYI=;
        b=HiJ1qDOK5yMGgqGoy2RBPF5s1KGlH3nxW4ytayUfSltLu1e9J6QnbbhSbTpLjYST8x
         L9ovMfpnis2nkmRRsiwbPjbY8AFuWCN3wAGbyoI5VvRNbBsYjbY9AoEw4WZdigCbeQAu
         cLwd+2DrTRPsJP1XqY5oENIP3dbdwlPh4KPIj71vKIjs6Do5RKVIzWycXqz/Nfh/Uzko
         itHjQH6A3Y6qdQDfN2lI2Sq+ScXbbdkvBHotP0kZhF4e72r1jBaKnmoneuUU1FRi6bz+
         7bmF5RYThlgBpIHmcv5gl+TaM1bHnE4YO1xBuwZmPxz/NN9cF/gJpy6Na8+oULCTDz16
         JP/g==
X-Gm-Message-State: ACgBeo2LDn0ZKSEV/hfkEUsFJP7kgLkuCdTVxK8SAjbNjYN28AFKZmUA
        iad0MZV9agWs5iLrcS3GBI2iYw==
X-Google-Smtp-Source: AA6agR5HkrW5SuUm5+J2yTFzMytf1r040Wtzkb7Ckqs8wjSJ7h23PEaX9dcTdx3VtW9xy1uWFAi5rw==
X-Received: by 2002:a5d:6504:0:b0:228:c94b:a5bb with SMTP id x4-20020a5d6504000000b00228c94ba5bbmr4607620wru.623.1662636360180;
        Thu, 08 Sep 2022 04:26:00 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id w10-20020a05600c474a00b003a608d69a64sm2582382wmo.21.2022.09.08.04.25.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Sep 2022 04:25:59 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     agross@kernel.org, andersson@kernel.org,
        konrad.dybcio@somainline.org, myungjoo.ham@samsung.com,
        cw00.choi@samsung.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, gurus@codeaurora.org,
        marijn.suijten@somainline.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     bryan.odonoghue@linaro.org, Rob Herring <robh@kernel.org>
Subject: [PATCH v4 1/2 RESEND] dt-bindings: pm8941-misc: Fix usb_id and usb_vbus definitions
Date:   Thu,  8 Sep 2022 12:25:55 +0100
Message-Id: <20220908112556.860343-2-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220908112556.860343-1-bryan.odonoghue@linaro.org>
References: <20220908112556.860343-1-bryan.odonoghue@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

dts validation is throwing an error for me on 8916 and 8939 with
extcon@1300. In that case we have usb_vbus but not usb_id.

It wasn't immediately obvious if there was a valid use-case for the
existing code for usb_id in isolation, however discussing further, we
concluded that usb_id, usb_vbus or (usb_id | usb_vbus) are valid
combinations as an external IC may be responsible for usb_id or usb_vbus.

Expand the definition with anyOf to capture the three different valid
modes.

Fixes: 4fcdd677c4ea ("bindings: pm8941-misc: Add support for VBUS detection")
Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Marijn Suijten <marijn.suijten@somainline.org>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../devicetree/bindings/extcon/qcom,pm8941-misc.yaml | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/extcon/qcom,pm8941-misc.yaml b/Documentation/devicetree/bindings/extcon/qcom,pm8941-misc.yaml
index 6a9c96f0352ac..1bc412a4ac5e6 100644
--- a/Documentation/devicetree/bindings/extcon/qcom,pm8941-misc.yaml
+++ b/Documentation/devicetree/bindings/extcon/qcom,pm8941-misc.yaml
@@ -27,10 +27,14 @@ properties:
 
   interrupt-names:
     minItems: 1
-    items:
-      - const: usb_id
-      - const: usb_vbus
-
+    anyOf:
+      - items:
+          - const: usb_id
+          - const: usb_vbus
+      - items:
+          - const: usb_id
+      - items:
+          - const: usb_vbus
 required:
   - compatible
   - reg
-- 
2.36.1

