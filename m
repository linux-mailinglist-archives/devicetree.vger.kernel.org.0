Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8521E52739A
	for <lists+devicetree@lfdr.de>; Sat, 14 May 2022 21:01:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234797AbiENTBs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 14 May 2022 15:01:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234807AbiENTBp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 14 May 2022 15:01:45 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A7D3D2871A
        for <devicetree@vger.kernel.org>; Sat, 14 May 2022 12:01:43 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id j4so19658596lfh.8
        for <devicetree@vger.kernel.org>; Sat, 14 May 2022 12:01:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=M0l8uf13lS8T2BMe8oGUirk3JiCk+Q/7ugdeXN9BOAM=;
        b=K5LOo4dHH3H2aKoTB4NGYnQc82dlM+L+MUahDmGvJX7CEkOrtmHHNVDCisZ4Ytsi9T
         bgF/gzwP4sV+SLWimLauendFTNJg6YJSGOG1/aPgDF+nT6VyTIAA0FQG3TZIgWbyeNfq
         AhxaC5tlyTMurBKhYHlu+fEMFApys6OZbgnR6IHiyKD5gCrnx8TWDJGZ0vLLH1F+TArK
         5WE+Ev223GrD7OpLfpXQVEElmRRaaBy5J4aCyWVKcR9u8ZRmMRg7K0Jy5iCK2cQeOJCL
         E+ttYLn1l+khx6OwmGBIZUxn3TbrWApVNc1T/C7bVIZOZ7T1HoFttPzFuFs7NpBfk/6j
         cfzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=M0l8uf13lS8T2BMe8oGUirk3JiCk+Q/7ugdeXN9BOAM=;
        b=K1PIjlav74G3osR22DgqqYMkRQXro91n6wYs/yKAA8evzE3EqrLp+sNmr4DBCaHdr3
         h4pjE3jJIbhOUMXTg1Iwr4yRLq+quDDxZGQ22N3d+IZNNLuQ7//z8aV606Pz7v2Fa9xm
         r1FxgGoxJFg3SB/aFpdc5eVxXIiRqTCi7qqMJt+yoWGdTRn2WAUtNtY/rVw4KgnM8Ddu
         y2/rb9PDJpLEL1uAVQYYv5h4/zxW7kugCi/N8fWkFaQ443bTCuyGlIeyjs1WKpuH0QF9
         a9iWNxB2m+zvBWDf819oFgqKQswDgvzP4Q+KuMyKRkfXt2WEZzuTi4d/9FPfIay988lR
         4S1g==
X-Gm-Message-State: AOAM533zyU+4TdXovoH0OCbo9jK3YpxJhfGKSLxap1zKiVf45nZ7EhjA
        Q+4i4/yT5ZHSeqjyT1vhOn26Fw==
X-Google-Smtp-Source: ABdhPJxTbYjvtUCc0WkhUe19N/hmKq4ZuHjqyZ6sCyMSqE78lcezrJUSTvAyij4qXEUVW9mfIkj+uA==
X-Received: by 2002:a05:6512:2988:b0:473:f41d:567d with SMTP id du8-20020a056512298800b00473f41d567dmr7656215lfb.384.1652554903250;
        Sat, 14 May 2022 12:01:43 -0700 (PDT)
Received: from eriador.lumag.spb.ru ([93.92.200.201])
        by smtp.gmail.com with ESMTPSA id y26-20020ac255ba000000b0047255d210f4sm787427lfg.35.2022.05.14.12.01.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 May 2022 12:01:42 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Marijn Suijten <marijn.suijten@somainline.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v5 04/12] arm64: dts: qcom: sdm630: fix the qusb2phy ref clock
Date:   Sat, 14 May 2022 22:01:30 +0300
Message-Id: <20220514190138.3179964-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220514190138.3179964-1-dmitry.baryshkov@linaro.org>
References: <20220514190138.3179964-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

According to the downstram DT file, the qusb2phy ref clock should be
GCC_RX0_USB2_CLKREF_CLK, not GCC_RX1_USB2_CLKREF_CLK.

Fixes: c65a4ed2ea8b ("arm64: dts: qcom: sdm630: Add USB configuration")
Cc: Konrad Dybcio <konrad.dybcio@somainline.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@somainline.org>
Reviewed-by: Marijn Suijten <marijn.suijten@somainline.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm630.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm630.dtsi b/arch/arm64/boot/dts/qcom/sdm630.dtsi
index e8bb170e8b2f..5be0ec06ed86 100644
--- a/arch/arm64/boot/dts/qcom/sdm630.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm630.dtsi
@@ -1262,7 +1262,7 @@ qusb2phy: phy@c012000 {
 			#phy-cells = <0>;
 
 			clocks = <&gcc GCC_USB_PHY_CFG_AHB2PHY_CLK>,
-				<&gcc GCC_RX1_USB2_CLKREF_CLK>;
+				 <&gcc GCC_RX0_USB2_CLKREF_CLK>;
 			clock-names = "cfg_ahb", "ref";
 
 			resets = <&gcc GCC_QUSB2PHY_PRIM_BCR>;
-- 
2.35.1

