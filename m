Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F26C07798C2
	for <lists+devicetree@lfdr.de>; Fri, 11 Aug 2023 22:48:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236698AbjHKUss (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Aug 2023 16:48:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57318 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236727AbjHKUsq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Aug 2023 16:48:46 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00D8130ED
        for <devicetree@vger.kernel.org>; Fri, 11 Aug 2023 13:48:46 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-4fe48d0ab0fso3748368e87.1
        for <devicetree@vger.kernel.org>; Fri, 11 Aug 2023 13:48:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691786924; x=1692391724;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Pxu621iOgDMVf5ytcvTvDymBIHNNCG8lYXpYeJOQc/s=;
        b=O3cstlrC8x31U8pm9x7wPu1gRqdwnwU+N7HWBN63Q5dVvwM/LP6bhxnr7/KFiMtQXl
         7SvvS7B0XkxEeDhxUMkOMpRl1JjGuR6VZ7109PY2qz2K4P+eLz+++0QnXEOYIb469Cad
         A2STxCMhXFevpxDmcYLf3mGC95Oq49GFyGYQbZCVcqQr8jx8Igu9G/ebA5G/HnkzsJii
         dq2R6OQjm98IJpc85tNk3gJ+8KPyYCkqnMsI0BShMrl/kvSEOD2SlmfeosUli/KeC4/6
         36OUJ04qexUiuP/zcrS18CmQMxOlisG6vaxGWEufi1VRiiQA/QfxOoh+ywlpJT+9h6o3
         iGEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691786924; x=1692391724;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Pxu621iOgDMVf5ytcvTvDymBIHNNCG8lYXpYeJOQc/s=;
        b=ZKegJAXz08TKt1L1Q3XM3leuB9Jndc/4MKrUUgXQk6CMbL+wE8nf6YgsVUwuxc8vT7
         3fkQ557PvnRBgo4Fu/GWTuJ2kVhTSnfdDxOHZxLNtzgD5e+LuCs1U5qoi8zgS8CbPJ5R
         YPNP3kDRxtKOoRJ2+WSIDpOQijUtG3CdpqvWcBBNlukQOZR22oTtu46YmrOu6pOiT3zU
         Aw3dWNCfo0azc9dKqwhfiWwjyThOuDbhpoGnn/X55fppuezro1Js/35MsoecujCykeuA
         QO0+8K76A9GJk4b7lAb6yLOpr193pwrAInnHrOlEGe+Mp5xhDm2hadhPu0Wbl1VMlC2K
         vq2Q==
X-Gm-Message-State: AOJu0YzfhW1wq4sk6tCBxGpHpQmJyZpaCgWwHMitQU4nkB/OTZVGOByG
        821lNtEXwYUOODGvrSqLJ69JSg==
X-Google-Smtp-Source: AGHT+IHvAfMqxIniDKXjvF3S8MxYiNINKcPRE7fmH3IqE0X204ZkTeHcNHFmDhAmsARsY5koqZthYA==
X-Received: by 2002:a05:6512:1094:b0:4f6:3ab6:3d9e with SMTP id j20-20020a056512109400b004f63ab63d9emr2418415lfg.59.1691786924317;
        Fri, 11 Aug 2023 13:48:44 -0700 (PDT)
Received: from [192.168.1.101] (abyj188.neoplus.adsl.tpnet.pl. [83.9.29.188])
        by smtp.gmail.com with ESMTPSA id w1-20020ac24421000000b004fe8d684172sm843603lfl.234.2023.08.11.13.48.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Aug 2023 13:48:43 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Fri, 11 Aug 2023 22:48:36 +0200
Subject: [PATCH 3/6] arm64: dts: qcom: sc8280xp: Hook up PDC as
 wakeup-parent of TLMM
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230811-topic-tlmm_wakeup-v1-3-5616a7da1fff@linaro.org>
References: <20230811-topic-tlmm_wakeup-v1-0-5616a7da1fff@linaro.org>
In-Reply-To: <20230811-topic-tlmm_wakeup-v1-0-5616a7da1fff@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1691786918; l=721;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=kYvW1Y7s3IPV5ZeIvEGtTVuGsinHTVjJIAqHXcfSnqE=;
 b=BQSob8/ASC9YBeFxeETIW6Iyjz3GvK06YaeuywWDWzO8xX/X1yhXRNtvltV8GZ4Wr2wSIcWe1
 IKD8U7hqeYCBJyVh4czH38Kz5o0bNIpB7zWQCP/dxFcGCEU6rMVb35E
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Some TLMM pins are wakeup-capable. Describe the relationship between
these two peripherals to enable this functionality.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
index 0756b7c141ff..cad59af7ccef 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
@@ -4059,6 +4059,7 @@ tlmm: pinctrl@f100000 {
 			interrupt-controller;
 			#interrupt-cells = <2>;
 			gpio-ranges = <&tlmm 0 0 230>;
+			wakeup-parent = <&pdc>;
 		};
 
 		apps_smmu: iommu@15000000 {

-- 
2.41.0

