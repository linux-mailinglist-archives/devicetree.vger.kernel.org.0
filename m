Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4254970DEBF
	for <lists+devicetree@lfdr.de>; Tue, 23 May 2023 16:09:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237288AbjEWOJ2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 May 2023 10:09:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47112 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237226AbjEWOJO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 May 2023 10:09:14 -0400
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D550170E
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 07:07:30 -0700 (PDT)
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-4effb818c37so8287566e87.3
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 07:07:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684850789; x=1687442789;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EDfmd2LIuPA0HfG9IqKD3+P6fxYepp/qyiFotzBuREY=;
        b=yOXW/G1QDsaAQQNpkxXpsb0NKccjnxTXVp15BbHbHVoMfBepGV14vktZyaZW2SSdTM
         +nGraDABo+SHIS8lSxUpdjTVHL2TDDCjPE5AAvXf7sIouMYygBIOVWhVs90rCG3IPyXd
         VaJmqIsZR68WwgwKanwYgBGHfM2ldTCrY9e4Kf+kWZDNnKYMdT64TmwxJTbYAf8f9IzM
         uKn2hzAatKBA0h7kqzftvKenqYhJhGTRX9t+gB4GRnYDRhLhKG2nMrGS6o4eYUbsYHsq
         AVUHiogSSUgKT67ZMYslQMAi2lp1g7cCTQh7agAXF6RKe7io8aBrquGROgnYFeTgLYBz
         D3Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684850789; x=1687442789;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EDfmd2LIuPA0HfG9IqKD3+P6fxYepp/qyiFotzBuREY=;
        b=VUCvXACMd5gN4VN4wQiDBuNwdoRmxSQCv9IpZFPY75LVLwDK4RcDRVVWQo2U1BDt85
         z1QKQUVbNg31BS3KMMv9ZAg0a3Dpj1vqZDUsiU4FhwW/IIYMIs2anIdC1Tv3E8fGjtdQ
         Fj/CtLRloCnaaFpYO0cT20v2sqracMxeEk91EzsP2og1otlQHtvPGrl6LfU6yJHL8cn9
         cgyRD05vS1SIHS5VZl95W+CuQuMWt9FJSTiw2gI0iFno/VwVxF5BqiIN7oPZFtDcrap9
         b21L1M0TGIoqxowQd7wm3d2DMq4Tf/myYE3KrGinBwNIvq+Nq6ZM/+xDnh+J+xirHYkQ
         jLqQ==
X-Gm-Message-State: AC+VfDy9NvcJrZSbYUTMcvP6Pgteif4TuH2Eh2a5u1z2P6H67BAAJoxY
        mswkDUPb9iHzr1P90XeQGvylfA==
X-Google-Smtp-Source: ACHHUZ5uAGMlv7gLQ78zmefjII54MYHtC0gPTq4eUFeXrGSgWkrw/Xtc4d4nu4jEwbNh1ac29uhvxA==
X-Received: by 2002:a2e:99cf:0:b0:2ac:862d:ad9e with SMTP id l15-20020a2e99cf000000b002ac862dad9emr4767749ljj.46.1684850789130;
        Tue, 23 May 2023 07:06:29 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id l1-20020a2e9081000000b002adbe01cd69sm1633536ljg.9.2023.05.23.07.06.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 May 2023 07:06:28 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Philipp Zabel <p.zabel@pengutronix.de>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org
Subject: [PATCH v3 07/11] arm64: dts: qcom: sm6350: switch UFS QMP PHY to new style of bindings
Date:   Tue, 23 May 2023 17:06:18 +0300
Message-Id: <20230523140622.265692-8-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230523140622.265692-1-dmitry.baryshkov@linaro.org>
References: <20230523140622.265692-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Change the UFS QMP PHY to use newer style of QMP PHY bindings (single
resource region, no per-PHY subnodes).

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6350.dtsi | 18 ++++--------------
 1 file changed, 4 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6350.dtsi b/arch/arm64/boot/dts/qcom/sm6350.dtsi
index 18c4616848ce..a816bb212174 100644
--- a/arch/arm64/boot/dts/qcom/sm6350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6350.dtsi
@@ -943,7 +943,7 @@ ufs_mem_hc: ufs@1d84000 {
 			      <0 0x01d90000 0 0x8000>;
 			reg-names = "std", "ice";
 			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
-			phys = <&ufs_mem_phy_lanes>;
+			phys = <&ufs_mem_phy>;
 			phy-names = "ufsphy";
 			lanes-per-direction = <2>;
 			#reset-cells = <1>;
@@ -988,10 +988,7 @@ ufs_mem_hc: ufs@1d84000 {
 
 		ufs_mem_phy: phy@1d87000 {
 			compatible = "qcom,sm6350-qmp-ufs-phy";
-			reg = <0 0x01d87000 0 0x18c>;
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0 0x01d87000 0 0x1000>;
 
 			clock-names = "ref",
 				      "ref_aux";
@@ -1001,16 +998,9 @@ ufs_mem_phy: phy@1d87000 {
 			resets = <&ufs_mem_hc 0>;
 			reset-names = "ufsphy";
 
-			status = "disabled";
+			#phy-cells = <0>;
 
-			ufs_mem_phy_lanes: phy@1d87400 {
-				reg = <0 0x01d87400 0 0x128>,
-				      <0 0x01d87600 0 0x1fc>,
-				      <0 0x01d87c00 0 0x1dc>,
-				      <0 0x01d87800 0 0x128>,
-				      <0 0x01d87a00 0 0x1fc>;
-				#phy-cells = <0>;
-			};
+			status = "disabled";
 		};
 
 		ipa: ipa@1e40000 {
-- 
2.39.2

