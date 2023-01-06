Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 999EC6607AC
	for <lists+devicetree@lfdr.de>; Fri,  6 Jan 2023 21:11:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236271AbjAFUKz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 Jan 2023 15:10:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49282 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236525AbjAFUKl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 Jan 2023 15:10:41 -0500
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81418840B3
        for <devicetree@vger.kernel.org>; Fri,  6 Jan 2023 12:10:39 -0800 (PST)
Received: by mail-lf1-x12d.google.com with SMTP id z26so3523644lfu.8
        for <devicetree@vger.kernel.org>; Fri, 06 Jan 2023 12:10:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yUZkGu7n26m3Xs47uNyxkgnrLNsx2oRREgP537Zptxo=;
        b=mQNAqqVI1eN5oosGZ8JxM06uTmD8U7axvC9oGHko6tIujVWTDigrThq3O1MHXDsH76
         Ejdc+o3mI50lB6XJ/ceL1I87Z0bE4Y85+oSnvp/lnOH4p5USyUpqtZlFZSqvKpjtGZJm
         rlX8CTyVxcBPcA5wLhyVfDqqig4zf5H4cuWRBXDPRl/K7V+NzjXiqIRUrpp2oXsy0mPB
         XYi9Pplk8Mwr3rK16S+h2EnJyzhh33zm4FF4/dYqaA8DMwhD5q+B9rj/iFXXbFTgmUSJ
         6KH3oml2dJmSE1tP8dyowPVRHxtM/L+kMmgOxFMZw6yQxb0d07kbxwRmxjmz654HrKrj
         mpoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yUZkGu7n26m3Xs47uNyxkgnrLNsx2oRREgP537Zptxo=;
        b=Oj8xx6CWUzIOjJ/Xt98PU24aeI5bHpuFLClHBbUPjvu6lqGMxxZmvyQkz/M9fpvKBY
         mvwz6rTE3AKD5OmWzKB/7oJN6avDEr5uEq2a1XY0kI8QzPwErh9Bf381bd7jC6EF+e1d
         RjtV6TGNVjNz+EOp0wekgzFGWnm5kfUejfzyWccexykGhn7J9W/GdcYioz3cTvq5nmNk
         jD6sanHi80lHnLUD5zymLC8s2dPBLTdWjMD8mklYC5DJbV6quqK9HPZKzRxPy4WlwzhY
         /f2lunw84ViCb/n1ykXOF9sgupfo/qMzkWgeXczuub6vGZmVoEv+gKVUipcLn52isZ8k
         Y6BA==
X-Gm-Message-State: AFqh2kok4QcZKVLXi43uZ4VcFKkjty3Ubtw7LpzCWox4+fleU/2UGHyd
        2G8+sEo792qP4ibZB5lRQ6UHP6tggC0mH8Ul
X-Google-Smtp-Source: AMrXdXtyHDSKRUGaiu4yRuvlIgveUFroUUUW6X1t9wplFn1rJJBRItb8XucLpUHIT/g1lPzWL12psg==
X-Received: by 2002:a05:6512:3901:b0:4a4:68b7:f892 with SMTP id a1-20020a056512390100b004a468b7f892mr19216831lfu.54.1673035839099;
        Fri, 06 Jan 2023 12:10:39 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id f14-20020a0565123b0e00b004b7033da2d7sm260875lfv.128.2023.01.06.12.10.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Jan 2023 12:10:38 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc:     Georgi Djakov <djakov@kernel.org>, Alex Elder <elder@linaro.org>,
        Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH v2 10/11] arm64: dts: qcom: sm8150: drop the virtual ipa-virt device
Date:   Fri,  6 Jan 2023 22:10:27 +0200
Message-Id: <20230106201028.1809541-11-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230106201028.1809541-1-dmitry.baryshkov@linaro.org>
References: <20230106201028.1809541-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Drop the virtual ipa-virt device. The interconnects it provided are
going to be represented as <&rpmhcc RPMH_IPA_CLK> clock.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8150.dtsi | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index 99750987c9d6..0759bc22d0c2 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -2057,13 +2057,6 @@ ufs_mem_phy_lanes: phy@1d87400 {
 			};
 		};
 
-		ipa_virt: interconnect@1e00000 {
-			compatible = "qcom,sm8150-ipa-virt";
-			reg = <0 0x01e00000 0 0x1000>;
-			#interconnect-cells = <1>;
-			qcom,bcm-voters = <&apps_bcm_voter>;
-		};
-
 		tcsr_mutex: hwlock@1f40000 {
 			compatible = "qcom,tcsr-mutex";
 			reg = <0x0 0x01f40000 0x0 0x20000>;
-- 
2.39.0

