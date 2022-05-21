Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B821852FF4D
	for <lists+devicetree@lfdr.de>; Sat, 21 May 2022 22:27:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233542AbiEUU1R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 21 May 2022 16:27:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49234 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234669AbiEUU1P (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 21 May 2022 16:27:15 -0400
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DCF4359B8B
        for <devicetree@vger.kernel.org>; Sat, 21 May 2022 13:27:13 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id e4so12475718ljb.13
        for <devicetree@vger.kernel.org>; Sat, 21 May 2022 13:27:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=YWR2foQFdk4b+7SsxEmz15bDiSQaU4mBWndKAPqFLgQ=;
        b=GMYbz6ZKmD24TdTO/GEPNIkaC8IQtA4Ov4u5ZCNX9/VwHR50LX38JVvnO3nbyp1L1c
         rE0QEOWnoqDR5ejXsPu8rr5h+T3Ev6TkuKRVHDZ1RSBRHKkmDvofrWAjWuGVVU83BjJ9
         Dqy2d5UVCCO2tzSqrp7m/EMC/bsQ0V2ZPQlIonJCka7iDV3zef0oeGBzMRJbF6R5rZ7i
         CcWXUHEeby1wcMPARswJNbCZ+5655sqZ9mAtam17Sd0dBq+bYc3rd0fkc3AeIk7Pp++r
         tp6lHiTFrZspyl+7x5WJKObLpGcQHNDVOiyMaBBK9KXzro3E2oSLF/NQxAABfp9oH07c
         1s/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=YWR2foQFdk4b+7SsxEmz15bDiSQaU4mBWndKAPqFLgQ=;
        b=2Rr7Ki3IuxElkddI2ASnyq1bUfBrSIsfztJQZ2gvRK7KV2Q0GOtJulzWdWYKH2P8q1
         zWqTebMjeMV6FeRTeGn7toEJNeRntgkSQcxOjEuF3G66sP7P5qz551yFfHuwxpecHG9x
         vvumtvuvw+5TjbiqFpWXHNOVj64p5TJQVrTWzspiLmi8fEK0E9CHvI8vJoCNl9Z9E/TK
         D3oHcByr4Fa2iTBTPqv/JubLSrD7jhvB2zPp34RoM1KimCO8c4P15Cd+9hwATV6uIt30
         Mm/XJ/hl+3nzZ79rujJ8sN+wiYk3eR5KvMLMb5/p9siCG5n30WB2ex2UNCP1xjVRINEL
         q5og==
X-Gm-Message-State: AOAM533FejH33kxjqbOswRF2+/esQkgSMUOoyxJoeu4cSSTb8yzoTfsd
        GdfNXsfKekgEd5IoD35uHZn1hg==
X-Google-Smtp-Source: ABdhPJxIUl5V1nuJUDhekuEWEVCT4caugRjoGMz8vMCxUImPSUI6Rrg6GxTgiO8NKWvhl3QFaInFgA==
X-Received: by 2002:a2e:bd13:0:b0:246:1ff8:6da1 with SMTP id n19-20020a2ebd13000000b002461ff86da1mr8802116ljq.219.1653164832253;
        Sat, 21 May 2022 13:27:12 -0700 (PDT)
Received: from eriador.lan ([2001:470:dd84:abc0::8a5])
        by smtp.gmail.com with ESMTPSA id x1-20020ac259c1000000b004786291114fsm317773lfn.140.2022.05.21.13.27.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 May 2022 13:27:11 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>
Subject: [PATCH v7 01/11] arm64: dts: qcom: sdm630: disable dsi0/dsi0_phy by default
Date:   Sat, 21 May 2022 23:26:58 +0300
Message-Id: <20220521202708.1509308-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220521202708.1509308-1-dmitry.baryshkov@linaro.org>
References: <20220521202708.1509308-1-dmitry.baryshkov@linaro.org>
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

Follow the typical practice and keep DSI0/DSI0 PHY disabled by default.
They should be enabled in the board DT files. No existing boards use
them at this moment.

Suggested-by: Marijn Suijten <marijn.suijten@somainline.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@somainline.org>
Reviewed-by: Marijn Suijten <marijn.suijten@somainline.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm630.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm630.dtsi b/arch/arm64/boot/dts/qcom/sdm630.dtsi
index b72e8e6c52f3..80d5eae9bc75 100644
--- a/arch/arm64/boot/dts/qcom/sdm630.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm630.dtsi
@@ -1563,6 +1563,8 @@ dsi0: dsi@c994000 {
 				phys = <&dsi0_phy>;
 				phy-names = "dsi";
 
+				status = "disabled";
+
 				ports {
 					#address-cells = <1>;
 					#size-cells = <0>;
@@ -1596,6 +1598,7 @@ dsi0_phy: dsi-phy@c994400 {
 
 				clocks = <&mmcc MDSS_AHB_CLK>, <&xo_board>;
 				clock-names = "iface", "ref";
+				status = "disabled";
 			};
 		};
 
-- 
2.35.1

