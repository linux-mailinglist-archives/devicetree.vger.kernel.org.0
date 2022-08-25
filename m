Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 756945A1125
	for <lists+devicetree@lfdr.de>; Thu, 25 Aug 2022 14:54:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241386AbiHYMyS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Aug 2022 08:54:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51342 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240419AbiHYMyR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Aug 2022 08:54:17 -0400
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D6475E669
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 05:54:15 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id x10so19355241ljq.4
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 05:54:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=D/ccOsbml4jzjSuaN6Ect5+wP3SbE22HAifCrGPULww=;
        b=FVWi5xKPF5jzZCW1H9revypI8JzpEg8PzHlOM4EejMA8fJV0y53TPDVzqVtdLiXN+f
         IC4X4qKTdFy3Ctj8t8tvs9stoC47gcEMdprPtqvNgvV5JVoNNHfZxndYNEhqXkXXFA60
         KRm3q3Zs94o6/bU/GLtNxrpgiv3uTtkzQI0B1/2d+CkxZruVYvhYxmlGr5YiJFsCnZsw
         u2EKWnORW0KcimWVcask0+FYGYwHiGWmrHDBXDvM+AkayGQgfcMzSaIg8ZlMw98hTHHC
         TlFDjz9VTTaFpyI0mTQBKZU6NWUQ4VAnDDsln+XNN+SVI5oOff4vjXL7h2CGTYl/8a10
         uPjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=D/ccOsbml4jzjSuaN6Ect5+wP3SbE22HAifCrGPULww=;
        b=wzgOTJl7MZCAjwY3JgzaxyvJtCc9kRBRdDnm1vJLtMKZamzUPskkPCfxnpdZijbv8e
         8iSjX1KRYxbLTXIl7bpRboB8k47yO5rzTlaSWnnvfK8SUR/PFrUjEI1XWKYJ2v8M5Vo5
         y+qvE867C11wPYsqvsX46GnKuGjPUw1H49am0p7lR9QBjQc/lHD55yTP4NuaFgqv+Y3F
         4LHGSdOlOyVX50sUzgX5zNW4qnyCKewpD+ZEKiRZom/QlOdFQreCkwzEsYO2NfB8R1Ij
         wsCfoE8tVKKHgAAIqpqOGyQM1LyveMo1mLBGlx5ZaNZZKEfIk/vchwZJ+mwGLLtT4B4H
         Eajg==
X-Gm-Message-State: ACgBeo12ACEo6tJ6C4EKqFIGLVHOsoUk3rz0ZtUVc4t/vdOeO1u5GF6X
        5uL+YNyh1Q69SMdu3k/MWvfByg==
X-Google-Smtp-Source: AA6agR5kjCthwco3jfPkTHcbllpiDHBj4Vg74du9SANxf9zhAAh/e85DVBU/WRdGZ5i9gCiEB3383g==
X-Received: by 2002:a05:651c:19a7:b0:261:d7af:5d4f with SMTP id bx39-20020a05651c19a700b00261d7af5d4fmr1125100ljb.51.1661432053808;
        Thu, 25 Aug 2022 05:54:13 -0700 (PDT)
Received: from krzk-bin.starman.ee (82.131.98.15.cable.starman.ee. [82.131.98.15])
        by smtp.gmail.com with ESMTPSA id z14-20020a056512370e00b00492e3a8366esm494304lfr.9.2022.08.25.05.54.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Aug 2022 05:54:13 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Lee Jones <lee@kernel.org>,
        Daniel Thompson <daniel.thompson@linaro.org>,
        Jingoo Han <jingoohan1@gmail.com>, Pavel Machek <pavel@ucw.cz>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Kiran Gunda <kgunda@codeaurora.org>,
        dri-devel@lists.freedesktop.org, linux-leds@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH RESEND - dt 1/2] dt-bindings: nvmem: qfprom: add IPQ8064 and SDM630 compatibles
Date:   Thu, 25 Aug 2022 15:54:09 +0300
Message-Id: <20220825125410.232377-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220825125410.232377-1-krzysztof.kozlowski@linaro.org>
References: <20220825125410.232377-1-krzysztof.kozlowski@linaro.org>
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

Document compatibles for QFPROM used on IPQ8064 and SDM630.  They are
compatible with generic QFPROM fallback.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml b/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
index dede8892ee01..b4163086a5be 100644
--- a/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
+++ b/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
@@ -18,6 +18,7 @@ properties:
       - enum:
           - qcom,apq8064-qfprom
           - qcom,apq8084-qfprom
+          - qcom,ipq8064-qfprom
           - qcom,msm8974-qfprom
           - qcom,msm8916-qfprom
           - qcom,msm8996-qfprom
@@ -25,6 +26,7 @@ properties:
           - qcom,qcs404-qfprom
           - qcom,sc7180-qfprom
           - qcom,sc7280-qfprom
+          - qcom,sdm630-qfprom
           - qcom,sdm845-qfprom
       - const: qcom,qfprom
 
-- 
2.34.1

