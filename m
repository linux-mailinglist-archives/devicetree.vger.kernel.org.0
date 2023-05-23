Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E692A70DEC6
	for <lists+devicetree@lfdr.de>; Tue, 23 May 2023 16:09:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237196AbjEWOJb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 May 2023 10:09:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237229AbjEWOJR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 May 2023 10:09:17 -0400
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7E65171F
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 07:07:33 -0700 (PDT)
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2af30a12e84so38657501fa.0
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 07:07:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684850792; x=1687442792;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3/m36s1I5lLQu5ZfF2EQK7PHYdhhLUzc5VcckZizUzo=;
        b=mJJFj4KKfK5O/1msuEyWitYgeaDaB1H7Zs90/dckpZxPxYuztJHVq+vnyvZCFllpdG
         34o7+tjCwYPvFs/03VQu+Ca74aLQ+yFb04ws0M3HKq+vywg0dMgfXIpwv4SbVEvcByFf
         hTnk3lKNIxvgN8MyifzrzgF/F8IQQ/GStiqlfYbVYFidQguAqIDcnzKySjO/63llzINk
         obdrKIjS3MFPTQNWGzwCxePDQ+PP0v3uL1IGq1+tuVXYdKJ3ATuDSTX2G+Mfo6rY2mgL
         p+Dn+hrpSNcZAZe+qKlEXKS8oONcpJYKHvO5e0ieh47WLn4xVvvuV+Y5W2W8SO0NdQgi
         q0vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684850792; x=1687442792;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3/m36s1I5lLQu5ZfF2EQK7PHYdhhLUzc5VcckZizUzo=;
        b=YFRILqPe2A4xvlWxI5OBsTo3trlFPbAXLlZJjUmdzBuW2MOkVRAhyxo+bhGx4e+QQZ
         Bfj6xdIgNwgRmPnh8lS58lajS8yseoT9W/WEOZCof68T6AePF7OFGNVYQ3OSWJnSQwvE
         3VCEbba79UgaNM0Zr+lgip8cZ+FdmJlMvdM4EUmfNaW8ngfqCi+viY+H9eeLGPGuaolW
         EKbP/iBs3O/gMoQrwQLMhc2nvASkw677wu8dLTgrMMhq6DfaYmmLxtRShLHGkb3Clk5u
         NUtm1aRUC3ulUHr0m3GHFq2OHnN7aToxTToPWuCy9HXoRZN4atMFwb7bkJGiwKxTySOR
         vNGA==
X-Gm-Message-State: AC+VfDxKa4eR4xW8F1gJvzDvFbmsLZH5IpnbyEdypWLrev+pv1ccM2by
        LVywsmYXXHAEaVfNsGQoQty+2Q==
X-Google-Smtp-Source: ACHHUZ5j8540mbF8AM+pJcRIA5egcAFfY/aeplJNYrDYh9hj0t3OOL1TtsFpB4ravHgVegvwiIsxuQ==
X-Received: by 2002:a2e:9117:0:b0:2ac:78b0:8aef with SMTP id m23-20020a2e9117000000b002ac78b08aefmr5444810ljg.16.1684850792068;
        Tue, 23 May 2023 07:06:32 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id l1-20020a2e9081000000b002adbe01cd69sm1633536ljg.9.2023.05.23.07.06.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 May 2023 07:06:31 -0700 (PDT)
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
Subject: [PATCH v3 11/11] arm64: dts: qcom: sm8450: switch UFS QMP PHY to new style of bindings
Date:   Tue, 23 May 2023 17:06:22 +0300
Message-Id: <20230523140622.265692-12-dmitry.baryshkov@linaro.org>
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
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 28 ++++++++++------------------
 1 file changed, 10 insertions(+), 18 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index 595533aeafc4..44a67c9274bd 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -741,9 +741,9 @@ gcc: clock-controller@100000 {
 				 <&pcie0_lane>,
 				 <&pcie1_lane>,
 				 <0>,
-				 <&ufs_mem_phy_lanes 0>,
-				 <&ufs_mem_phy_lanes 1>,
-				 <&ufs_mem_phy_lanes 2>,
+				 <&ufs_mem_phy 0>,
+				 <&ufs_mem_phy 1>,
+				 <&ufs_mem_phy 2>,
 				 <&usb_1_qmpphy QMP_USB43DP_USB3_PIPE_CLK>;
 			clock-names = "bi_tcxo",
 				      "sleep_clk",
@@ -4064,7 +4064,7 @@ ufs_mem_hc: ufshc@1d84000 {
 			      <0 0x01d88000 0 0x8000>;
 			reg-names = "std", "ice";
 			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
-			phys = <&ufs_mem_phy_lanes>;
+			phys = <&ufs_mem_phy>;
 			phy-names = "ufsphy";
 			lanes-per-direction = <2>;
 			#reset-cells = <1>;
@@ -4114,10 +4114,8 @@ ufs_mem_hc: ufshc@1d84000 {
 
 		ufs_mem_phy: phy@1d87000 {
 			compatible = "qcom,sm8450-qmp-ufs-phy";
-			reg = <0 0x01d87000 0 0x1c4>;
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0 0x01d87000 0 0x1000>;
+
 			clock-names = "ref", "ref_aux", "qref";
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
 				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
@@ -4125,17 +4123,11 @@ ufs_mem_phy: phy@1d87000 {
 
 			resets = <&ufs_mem_hc 0>;
 			reset-names = "ufsphy";
-			status = "disabled";
 
-			ufs_mem_phy_lanes: phy@1d87400 {
-				reg = <0 0x01d87400 0 0x188>,
-				      <0 0x01d87600 0 0x200>,
-				      <0 0x01d87c00 0 0x200>,
-				      <0 0x01d87800 0 0x188>,
-				      <0 0x01d87a00 0 0x200>;
-				#clock-cells = <1>;
-				#phy-cells = <0>;
-			};
+			#clock-cells = <1>;
+			#phy-cells = <0>;
+
+			status = "disabled";
 		};
 
 		sdhc_2: mmc@8804000 {
-- 
2.39.2

