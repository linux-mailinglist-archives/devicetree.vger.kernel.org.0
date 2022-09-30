Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9D1A95F11EF
	for <lists+devicetree@lfdr.de>; Fri, 30 Sep 2022 20:52:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232435AbiI3Swy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Sep 2022 14:52:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38536 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232343AbiI3Swt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Sep 2022 14:52:49 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 636DF166F1B
        for <devicetree@vger.kernel.org>; Fri, 30 Sep 2022 11:52:48 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id g1so8184332lfu.12
        for <devicetree@vger.kernel.org>; Fri, 30 Sep 2022 11:52:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=lHUkKbcRju/Un3XDg1sWJSqtXcJEPCkBM+PZRvvNsmI=;
        b=T5+Nx+S5kTIR+P9NKv17Gq7DewekPWggO0p9aicD0PncZPKUEpXMpUM5ir7dX0MyAk
         XloB+caHCcPtf/4CaDegNZWKGhsMdQO1n1v+Hz+gT+L1B34Wax0xnHbg+o2KsAVUi/FG
         k2EIiX8c+r5IYE05RUKQf033ljljxRTsDkyAHOwmqVn0E3+5Cd+KvYxgnEcGG30TlSjl
         3H2eBE6UgShwLyyXSX1hvfTE0BA6MqlSBiwBybC7XE4dfT3qE8D2EATO2AlTk6Fo9DYF
         bZTnSHpTi8ggAYVNdX3pmxudF9iZXcGCvuh1ktPA6gq3Em/UhcDOzHZcqzQ59uo7txpA
         xhZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=lHUkKbcRju/Un3XDg1sWJSqtXcJEPCkBM+PZRvvNsmI=;
        b=5g5KjGEN+4tQe6rUVEa+bFnPRSI15mfeA/vAMvKj+A7+WMESKtV8xYBQezaS3ApFyg
         brqxFHlR/fptR2JYUWqm0Q2NGeqCgQUctKwrfgLpAaIV/Jviiz3Wpe3BzSvP4Fzvmp+7
         O/uX/bw3tnClYSLtooU31EqscdFCoUxmsLDa1hX/pAuAT8JqHGeJYf65bPbQxPcPvduf
         9vWNrIEuTIjhft1t3kms9L7BrV0NMwyqRqqu8/h82P9oUBW1qnjbYf3BgML+Vk60wpQn
         t5bvXs0+5wVcWb2O8H915gix7ftdhF5pRVS/aQWwwt7Sa/dxsZRtcxryLXkVJlTTdMfh
         9whw==
X-Gm-Message-State: ACrzQf1W4LKKqn3uqZMr3ec4c6N8JFh7fEMnJOXEkF/vxr9jlaSn9gH6
        1r/fOLit/ICi15ILKPhngd6JUA==
X-Google-Smtp-Source: AMsMyM5tCEiU/KefWobPHFh6OULiMTKovrr/+LO2uhf6V01t6+vH4X58b3jnElwLFwPQuWrZP4cczg==
X-Received: by 2002:a05:6512:234b:b0:4a2:f31:9ce2 with SMTP id p11-20020a056512234b00b004a20f319ce2mr2398036lfu.219.1664563967887;
        Fri, 30 Sep 2022 11:52:47 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id i8-20020a056512006800b00492cfecf1c0sm374703lfo.245.2022.09.30.11.52.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Sep 2022 11:52:47 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 14/23] ARM: dts: qcom: apq8064: drop qcom, prefix from SSBI node name
Date:   Fri, 30 Sep 2022 21:52:27 +0300
Message-Id: <20220930185236.867655-15-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220930185236.867655-1-dmitry.baryshkov@linaro.org>
References: <20220930185236.867655-1-dmitry.baryshkov@linaro.org>
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

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom-apq8064.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/qcom-apq8064.dtsi b/arch/arm/boot/dts/qcom-apq8064.dtsi
index 6a8f3fd0fcc3..be4c82945c53 100644
--- a/arch/arm/boot/dts/qcom-apq8064.dtsi
+++ b/arch/arm/boot/dts/qcom-apq8064.dtsi
@@ -693,7 +693,7 @@ pm8821_mpps: mpps@50 {
 			};
 		};
 
-		qcom,ssbi@500000 {
+		ssbi@500000 {
 			compatible = "qcom,ssbi";
 			reg = <0x00500000 0x1000>;
 			qcom,controller-type = "pmic-arbiter";
-- 
2.35.1

