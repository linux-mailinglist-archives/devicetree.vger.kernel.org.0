Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 66A8A744DE7
	for <lists+devicetree@lfdr.de>; Sun,  2 Jul 2023 15:43:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230024AbjGBNnl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Jul 2023 09:43:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41874 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230005AbjGBNnk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Jul 2023 09:43:40 -0400
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30B59E6F
        for <devicetree@vger.kernel.org>; Sun,  2 Jul 2023 06:43:36 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2b6afc1ceffso57486651fa.0
        for <devicetree@vger.kernel.org>; Sun, 02 Jul 2023 06:43:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688305414; x=1690897414;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/+Cyc6iyJgi1jIYR2SdUySI+dkCNcLYZsYejiaDMvPE=;
        b=zSCrmjUlSnbnsOIN2azeZHVUEa/pKRqVg6qp5d1QZKtiflqu8sbmrQdLIy7ou7f7ac
         ly6zNCoXwoP90lcu5m8TXdngs5kje1U2GkpA6tQuGSazW2pxifS6a17EtpyhkTZSWFPE
         z89rVbgIxlg68OpJOqfzaH6wcro9UW3OhY2wtbm/xHs4Y8F4T4tbzSJoa0x0g37CHvap
         lPfDSg/U0Y7vKJZ/M+HCOfTYR4qIn5IhYIFXYnfh7gjUfuPvYVOAzXqalMjDHTiHPDef
         ZEGbVMLXt0mUcc2I5Bt1GXdjpeYNEXcAMUYUmprZxkTUo+22hzr4W4/euHpDBSrovRjF
         p5bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688305414; x=1690897414;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/+Cyc6iyJgi1jIYR2SdUySI+dkCNcLYZsYejiaDMvPE=;
        b=L7Y1I2Q/FADxD92ts3z7K9GQgRyxORCMZqYnuTXKUlII8903vYkO5Y0Mbmyz4ksj8o
         y8nC0A9GvdTQtFesxBdh8SHpmfhyBwWbrNlzO4caLT2EVH5xHYcDJwh8X2EYHcTwX7ze
         TDvMCMeYtK3kaQ1U2DmC//V/MnwFi7G/drEXtr3dzzAEqFFLMtbDfhKyZELpBkaueiex
         j5t5mC40WYim+9Al0+dNqp/N5psEI1bpThTVOsUA9wRebnFNg9JZ/rT2LBV3bglrt67R
         Zjgq/hLsdzg2vJRmOE67RSxXDyCwU3PfnIHLp8EEtN3r0EnXxKczjKmLq116VD5KfFdN
         mO1A==
X-Gm-Message-State: ABy/qLbJAcW6+rigk9hDkNLCLjgaFfPa8SDPi8PXQilTFb5rrnZOEBYG
        7uTv99p8i6t47nFfnhV5WtOMbw==
X-Google-Smtp-Source: APBJJlEJXPhv+mL3PSks2p+M8n2QILPW3Jsv3cBKHJYDJ/vkUbRx4Mrr0iK4DvSGGTxYA6cr7K44YQ==
X-Received: by 2002:a2e:9844:0:b0:2b5:86e4:558e with SMTP id e4-20020a2e9844000000b002b586e4558emr5043278ljj.38.1688305414502;
        Sun, 02 Jul 2023 06:43:34 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id d9-20020a2e96c9000000b002b6988ca476sm4310650ljj.101.2023.07.02.06.43.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Jul 2023 06:43:34 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v2 17/27] ARM: dts: qcom: pm8018: move reg property
Date:   Sun,  2 Jul 2023 16:43:10 +0300
Message-Id: <20230702134320.98831-18-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230702134320.98831-1-dmitry.baryshkov@linaro.org>
References: <20230702134320.98831-1-dmitry.baryshkov@linaro.org>
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

Move reg property to come after compatible.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom/pm8018.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/pm8018.dtsi b/arch/arm/boot/dts/qcom/pm8018.dtsi
index c602544900b2..85ab36b6d006 100644
--- a/arch/arm/boot/dts/qcom/pm8018.dtsi
+++ b/arch/arm/boot/dts/qcom/pm8018.dtsi
@@ -27,9 +27,9 @@ pwrkey@1c {
 
 		pm8018_mpps: mpps@50 {
 			compatible = "qcom,pm8018-mpp", "qcom,ssbi-mpp";
+			reg = <0x50>;
 			interrupt-controller;
 			#interrupt-cells = <2>;
-			reg = <0x50>;
 			gpio-controller;
 			#gpio-cells = <2>;
 			gpio-ranges = <&pm8018_mpps 0 0 6>;
@@ -37,9 +37,9 @@ pm8018_mpps: mpps@50 {
 
 		rtc@11d {
 			compatible = "qcom,pm8018-rtc", "qcom,pm8921-rtc";
+			reg = <0x11d>;
 			interrupt-parent = <&pm8018>;
 			interrupts = <39 IRQ_TYPE_EDGE_RISING>;
-			reg = <0x11d>;
 			allow-set-time;
 		};
 
-- 
2.39.2

