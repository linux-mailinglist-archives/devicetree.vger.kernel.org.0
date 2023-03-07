Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CB3076ADFA0
	for <lists+devicetree@lfdr.de>; Tue,  7 Mar 2023 14:02:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229991AbjCGNCY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Mar 2023 08:02:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229611AbjCGNCO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Mar 2023 08:02:14 -0500
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2916E7B4AA
        for <devicetree@vger.kernel.org>; Tue,  7 Mar 2023 05:01:58 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id t11so16975756lfr.1
        for <devicetree@vger.kernel.org>; Tue, 07 Mar 2023 05:01:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678194117;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ut4TSC+Pm5nzJkEcVTKrAQ4k73YguRqK0sCMCjuGo+M=;
        b=RctBDUqYGaVBaAXQf5/lse6b4+tNd03LMZwng8E/TBLAQUmEE5N66KheYcYYmKp2ht
         kOSzCu0nMnFVhY1vTG6YJHSgwI8/8K+R9sXn9mmQ51LqCK0aqDWzpRKWdA1NJpW6VzJ+
         yZhicAGZ1Why6iRCQ00SZNqhyw8fAGhSdztQ1UEKaEYxrR7Rc1J/yE9S0Sm+k+1wUrEv
         pyPzfDonMbse1nMFTLryoyxJIej73IdfydVzvfOc3njvNk9lu4sVtHYe6M59tERvzo1t
         F31fGmrPRWsDvFqWqw6mDAx1GPMa63V3bCynZH4Y1R0oFHVWKZAKyCrQSQ+03P8g1ySJ
         UAvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678194117;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ut4TSC+Pm5nzJkEcVTKrAQ4k73YguRqK0sCMCjuGo+M=;
        b=HR4WPDyDrVVlZ9s8iwnR3NMuu4GqWdq7b4xPb6qYGw7/q8Ccrjlr3/shnNK8EM32Zm
         6dHoH7pbUfaQbw5fNjApfnNWh3b+21Tj0/rDWa9VmvmyQJwK9NLNqLwLvU8OwmS+OREk
         gm7r//7t+sOZQAmpOzn52KJIhehKvlyfXBWGPVNAbC6YnEZnYnKPkodagyiQPgHNoAlE
         chobRyUAm0AEdNZSqRuvSGnJkjlbiNqhdCEaKA06Fm7pqUUVXIb3cMo4PrFwQDhF5pJu
         HIXuhPyPgBEsk3HxTX5eNGmLuwDkjobazqPXky5RBW2dCPD5K/cj9qE3sciYWOphHbsN
         Riog==
X-Gm-Message-State: AO0yUKWVsjdF8NCsg4BzN6y/+CNFpFxtKfIh4NF3EBm6pNO4EQT8CFgj
        lcJW8+ZudCG5ySFTROwQC72WjQ==
X-Google-Smtp-Source: AK7set9QFz3KRQJXUKWAKcSHi9uuaSO2igyVSU9CwQNTpt9S6qAlxCJmvrWEsgumpGjaPbhvrd//tg==
X-Received: by 2002:ac2:44ca:0:b0:4df:7586:cc3a with SMTP id d10-20020ac244ca000000b004df7586cc3amr4114540lfm.5.1678194116959;
        Tue, 07 Mar 2023 05:01:56 -0800 (PST)
Received: from [192.168.1.101] (abyj16.neoplus.adsl.tpnet.pl. [83.9.29.16])
        by smtp.gmail.com with ESMTPSA id u2-20020ac248a2000000b004cc5e97d356sm2048265lfg.148.2023.03.07.05.01.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Mar 2023 05:01:56 -0800 (PST)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Tue, 07 Mar 2023 14:01:48 +0100
Subject: [PATCH v3 10/10] arm64: dts: qcom: sm6115: Use the correct DSI
 compatible
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230307-topic-dsi_qcm-v3-10-8bd7e1add38a@linaro.org>
References: <20230307-topic-dsi_qcm-v3-0-8bd7e1add38a@linaro.org>
In-Reply-To: <20230307-topic-dsi_qcm-v3-0-8bd7e1add38a@linaro.org>
To:     Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc:     Rob Herring <robh@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1678194100; l=774;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=+M7SeQ5R6naG5dqrsHPHLQ1roECLpDh+fCC/guUalJs=;
 b=uUDF9bfXttb4MlshbWaj4RoQrPAaqam2ks171eqq2ViQ+Fp+8e7De9vuIHXKvzypvVuVpo9pCPGz
 sHGReTBbADnojBvX1oHJF1d1QFDVvxIXHB8n8l5NDzbRrAL7cJej
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SORBS_HTTP,RCVD_IN_SORBS_SOCKS,SPF_HELO_NONE,SPF_PASS,
        URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Use the non-deprecated, SoC-specific DSI compatible.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6115.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
index 4d6ec815b78b..26e2c7919961 100644
--- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
@@ -1218,7 +1218,7 @@ opp-384000000 {
 			};
 
 			mdss_dsi0: dsi@5e94000 {
-				compatible = "qcom,dsi-ctrl-6g-qcm2290";
+				compatible = "qcom,sm6115-dsi-ctrl", "qcom,mdss-dsi-ctrl";
 				reg = <0x0 0x05e94000 0x0 0x400>;
 				reg-names = "dsi_ctrl";
 

-- 
2.39.2

