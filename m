Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 415D56576EB
	for <lists+devicetree@lfdr.de>; Wed, 28 Dec 2022 14:31:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232627AbiL1NbK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Dec 2022 08:31:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40826 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230464AbiL1NbI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Dec 2022 08:31:08 -0500
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D126DF5BC
        for <devicetree@vger.kernel.org>; Wed, 28 Dec 2022 05:31:03 -0800 (PST)
Received: by mail-ej1-x634.google.com with SMTP id ud5so38392473ejc.4
        for <devicetree@vger.kernel.org>; Wed, 28 Dec 2022 05:31:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QED1aNtpCBA4/YxA776enxTbRIKvec58m1cbK25uDdk=;
        b=hY9OVWNL1DdXi0BZOMdWNCKWqJhqnl5EmLUL6emj93JJTIjUudn2hxgGo5uDxvVYsN
         jI4OuPhoL2pFUk+VvPOOyh1daA6zzr6KFPNXxkcSX9tzC8grRL/dF/Gzl01quGUaEuCp
         eSAduzz5qP9UvMeqrWuqZ8qhBieAV9s7gcYH99svdBj+EKoYQkAV7MQuKTAiFUmQSSSy
         1s+iu3QMEj27ZIsGfNxOMEREfPidwf39On45CjWOfTL3PzykBui/nd6IOmaeskoSxVZf
         EUr7SnJK1zDDAI60R7FTVu9V3sqsLl2YbwHqjcHetYFsDtGX6KsWzJBlCTmEkGS/HnJP
         ep3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QED1aNtpCBA4/YxA776enxTbRIKvec58m1cbK25uDdk=;
        b=nx8WXfYiRgivxj1iIF+iwuOBHBwfdgYwnrbyNyvRZu5AQNGPzVFMfwy5RzyCRPc8jI
         TMnzQKaXzQfPj5+WGrAIZE9k2XEbw6JcVVWZGSdCJ3A2pWqMUFmEqujmvoLjZFUAvgIs
         5vCo8p+VFQSi0Rpp1+2N22NzyEjfOuJE9QBAjg3KlRVD+Suoap/R6FJhehc5hsRWidUA
         DP44F3xd0NGBO1VBq/Oam1tpRXdgCf+xYLaDNeZpJwGJCCpcoPjjor0A6/1SZuT1HF2L
         qWuWgfQt56EVy0EFZDId630r3sjpGr/X7UPIP6g4bSIfNxxP+myScwNgaaOGIRvaosUz
         JV7g==
X-Gm-Message-State: AFqh2ko7Mj+TSDjVAB/lf8UgSL7p6uV4ANnqRgLzulbOaiS9JlnxmhzN
        x7uzc17lchZlaIPPvq0npziGzA==
X-Google-Smtp-Source: AMrXdXuA4ru4b3mURtizphZay9lVz0mDzfpSmdV5Nc6xFdqWJhqSdXY8yzo5NuIO7AJ0bbSVC62+Ug==
X-Received: by 2002:a17:906:158c:b0:7c4:f752:e959 with SMTP id k12-20020a170906158c00b007c4f752e959mr20022518ejd.33.1672234262421;
        Wed, 28 Dec 2022 05:31:02 -0800 (PST)
Received: from planet9.chello.ie (2001-1c06-2302-5600-85f6-04b5-1651-3b6c.cable.dynamic.v6.ziggo.nl. [2001:1c06:2302:5600:85f6:4b5:1651:3b6c])
        by smtp.gmail.com with ESMTPSA id j15-20020a170906094f00b007add28659b0sm7541393ejd.140.2022.12.28.05.31.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Dec 2022 05:31:02 -0800 (PST)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     cw00.choi@samsung.com, myungjoo.ham@samsung.com,
        andersson@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, gregkh@linuxfoundation.org,
        agross@kernel.org
Cc:     konrad.dybcio@linaro.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        bryan.odonoghue@linaro.org, Rob Herring <robh@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>
Subject: [PATCH v4 1/2 RESEND] dt-bindings: pm8941-misc: Fix usb_id and usb_vbus definitions
Date:   Wed, 28 Dec 2022 13:30:57 +0000
Message-Id: <20221228133058.213886-2-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221228133058.213886-1-bryan.odonoghue@linaro.org>
References: <20221228133058.213886-1-bryan.odonoghue@linaro.org>
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
2.34.1

