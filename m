Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A7C48658BB7
	for <lists+devicetree@lfdr.de>; Thu, 29 Dec 2022 11:32:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232749AbiL2KcU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Dec 2022 05:32:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56718 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231182AbiL2KcU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Dec 2022 05:32:20 -0500
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F63595B5
        for <devicetree@vger.kernel.org>; Thu, 29 Dec 2022 02:32:19 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id j17so17465732lfr.3
        for <devicetree@vger.kernel.org>; Thu, 29 Dec 2022 02:32:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v/QfAo8E7L28subqXqlEzDaHoTOHQ8vrUh6riymjZqc=;
        b=qPP2N2TZvF9wIBDjKBV0Zb+B55qDdY+2GeNjI+B1VZrpmmyZ4i/uV8PbqdJxBFd8cF
         zldx3FETS7ooZDgSvVn95Rx+Qkv4AW7uiyF7GoRGtl4OSrewfZyQAXCc2xYgBmP6AhsU
         LFiDf23CvnTP6IBX6hODW27jlexaEoRynawNUfidtDTa5D7xz5600iB6HxBOLNenNNRT
         9QvNyVEjkfPTsGg/epunlnExV/GSoMOumoN/07VA9Fi4k0TOAYyehi12e0BEqG4rH3nd
         NxV/DGDy2cK0uPEFEOVAWNs1cTtr7zcD2WVHOgKo7u748By8RJ7XmxYVq18xOcdJIyLO
         e9Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=v/QfAo8E7L28subqXqlEzDaHoTOHQ8vrUh6riymjZqc=;
        b=anes1WQVolrA0xjaeqqFLMzmI3Rdf2/HLtOKwrSpkWqSPRWG0NPoZSK0B9Ts9i61AE
         Jm8EfmJAltJtDjJ8+ckKa7Mhh1uXOPci075niMBXR9gwqli8y0mJwx6O668f7nlqRSZn
         vX4Ghj6Ct4fcB1w5ERFZRrqF83bLPMeX2TVGW28g9yTBB3rH5Z3yvexKFg+TCq0YvPEb
         RHaiTttlvttygMy3exB0Ed04A+fuAA975HFt7yxMDpzLeqI6liW5o59qFFZQvh7WUimj
         +XZHznEFZNFAg8OKa6jSQ+maHXwTNcljisGn5K6iMIZTvSrPrea01/CeKYYLuZaYYac2
         RHDg==
X-Gm-Message-State: AFqh2kpqr85XHlFLRVybAeMFs+S81sOdZz6MkqDc5HCUJkCaGWk7IN3w
        oxiJpiEDLQK1ZQ3IA19jtrCWYQ==
X-Google-Smtp-Source: AMrXdXss2v+IEBmgJFFRNEN66Wxr2S/gJ2lFz7Kz8D0BSOsxBhQIDYLZ51cKA5ZOHS1lKstuWMitlQ==
X-Received: by 2002:a05:6512:c24:b0:4b5:964d:499b with SMTP id z36-20020a0565120c2400b004b5964d499bmr9299298lfu.34.1672309937580;
        Thu, 29 Dec 2022 02:32:17 -0800 (PST)
Received: from localhost.localdomain (abyl184.neoplus.adsl.tpnet.pl. [83.9.31.184])
        by smtp.gmail.com with ESMTPSA id m1-20020a056512114100b004a478c2f4desm2993526lfg.163.2022.12.29.02.32.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Dec 2022 02:32:17 -0800 (PST)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
To:     linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org, krzysztof.kozlowski@linaro.org
Cc:     marijn.suijten@somainline.org, Vinod Koul <vkoul@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/7] arm64: dts: qcom: sm8450-nagara: Include PMIC DTSIs
Date:   Thu, 29 Dec 2022 11:32:07 +0100
Message-Id: <20221229103212.984324-2-konrad.dybcio@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20221229103212.984324-1-konrad.dybcio@linaro.org>
References: <20221229103212.984324-1-konrad.dybcio@linaro.org>
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

Now that SPMI is finally in place, include the DTSIs of PMICs present
on Nagara.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
v1 -> v2:
No changes

 arch/arm64/boot/dts/qcom/sm8450-sony-xperia-nagara.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8450-sony-xperia-nagara.dtsi b/arch/arm64/boot/dts/qcom/sm8450-sony-xperia-nagara.dtsi
index 45ee922de4e8..e29fb7adc780 100644
--- a/arch/arm64/boot/dts/qcom/sm8450-sony-xperia-nagara.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450-sony-xperia-nagara.dtsi
@@ -5,6 +5,12 @@
 
 #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
 #include "sm8450.dtsi"
+#include "pm8350.dtsi"
+#include "pm8350b.dtsi"
+#include "pm8350c.dtsi"
+#include "pm8450.dtsi"
+#include "pmk8350.dtsi"
+#include "pmr735a.dtsi"
 
 /delete-node/ &adsp_mem;
 /delete-node/ &rmtfs_mem;
-- 
2.39.0

