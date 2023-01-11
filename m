Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 61223666460
	for <lists+devicetree@lfdr.de>; Wed, 11 Jan 2023 21:05:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239643AbjAKUFW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Jan 2023 15:05:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35160 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235383AbjAKUE7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Jan 2023 15:04:59 -0500
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51CEC43A1F
        for <devicetree@vger.kernel.org>; Wed, 11 Jan 2023 12:01:31 -0800 (PST)
Received: by mail-lf1-x12d.google.com with SMTP id f34so25168098lfv.10
        for <devicetree@vger.kernel.org>; Wed, 11 Jan 2023 12:01:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X1ASsGHKR4g4CL9h7lZg2fjHvPvUGBMoSRXi8aiWL9Y=;
        b=q6QvlWvpc+I/UFMgOrF72FBjP9/gHbyqnY9vd6VHx0PMznYAYQaBr5Ty3Ou9rdGnSC
         zLuInp2zpjHsa2022aKJ7dY2ymDfTzcBWXymtnIAPhSzrnAP84rwZtmuVpKZAcrO8lUi
         +t8uQ7Y2Vt1fQzwK4vzALyFQ71/uOPyOJHF0WE9tAo2KN4Ju2svnknDahb7bLp5lzmgW
         J0e6G3NDsWjPGzkbndP2QdRQB4ipxYsnL11fXCRaLmKqAY03DLebopICM9Sm9YMfCiD4
         NVkxQa0iWQrhXmpd9kSEmkoTapNjM42e+yt/3RejYBTBR6ELK7Nu7lQYAm6kU82T3QeP
         /1fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=X1ASsGHKR4g4CL9h7lZg2fjHvPvUGBMoSRXi8aiWL9Y=;
        b=wUVVzSiPS0862ixMgyrGM8CX7hWPyqTbUN1BgymR2HHNiZknWoxC2BitQ22Vru+/w8
         M4UCPBsTfkoDLOcaQ1k86Afg5I7aRRFjYs/aFF37QaiBSBaZuxZzFgVWb2KqejyxOwvO
         WFzwHDx8lDDKo9Q2jarUSCiS5xkQZAQmHBZ47v4FFMWNyXy8HduagfOUUzH/2HAQ5dDT
         CCxoTy3Ud1emzgLVWVCAb3kAJgfYlTvJGLBF7WQpDPeSlUsdBiUY8d+JhVA27j8Rb3FN
         qcbsWRY5KuqHbEWfLgbxQ2LS9tWKxp1kLwCUzsJNazD0T0L4xSeAVZg5W1q1Fd3xaezR
         pMlg==
X-Gm-Message-State: AFqh2krQb+8x34VuC56Rl5UNknad8ETeU6enECcPErVQYCbK9iiX7Wj4
        432PPt9a9K88fnR6U+WoMHsdZA==
X-Google-Smtp-Source: AMrXdXusoRB/zu8OQvNTrMxPqTtHu9WNrzP+Ui9KgTN++eC8qoxDFNjZtSDbfLDNI4eme+kF/sRjPA==
X-Received: by 2002:a05:6512:22c8:b0:4cb:88c:c795 with SMTP id g8-20020a05651222c800b004cb088cc795mr20736546lfu.23.1673467289722;
        Wed, 11 Jan 2023 12:01:29 -0800 (PST)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id v20-20020a05651203b400b004b4e6dab30esm2881437lfp.222.2023.01.11.12.01.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jan 2023 12:01:29 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH v2 01/14] dt-bindings: clock: qcom,msm8996-apcc: add sys_apcs_aux clock
Date:   Wed, 11 Jan 2023 23:01:15 +0300
Message-Id: <20230111200128.2593359-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230111200128.2593359-1-dmitry.baryshkov@linaro.org>
References: <20230111200128.2593359-1-dmitry.baryshkov@linaro.org>
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

The MSM8996 CPU clock controller can make use of the sys_apcs_aux clock.
Add it to the bindings.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/clock/qcom,msm8996-apcc.yaml        | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/qcom,msm8996-apcc.yaml b/Documentation/devicetree/bindings/clock/qcom,msm8996-apcc.yaml
index c4971234fef8..fcace96c72eb 100644
--- a/Documentation/devicetree/bindings/clock/qcom,msm8996-apcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,msm8996-apcc.yaml
@@ -27,10 +27,12 @@ properties:
   clocks:
     items:
       - description: XO source
+      - description: SYS APCS AUX clock
 
   clock-names:
     items:
       - const: xo
+      - const: sys_apcs_aux
 
 required:
   - compatible
@@ -48,6 +50,6 @@ examples:
         reg = <0x6400000 0x90000>;
         #clock-cells = <1>;
 
-        clocks = <&xo_board>;
-        clock-names = "xo";
+        clocks = <&xo_board>, <&apcs_glb>;
+        clock-names = "xo", "sys_apcs_aux";
     };
-- 
2.30.2

