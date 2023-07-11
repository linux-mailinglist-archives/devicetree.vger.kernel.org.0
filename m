Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BE52E74F2C2
	for <lists+devicetree@lfdr.de>; Tue, 11 Jul 2023 16:52:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233089AbjGKOwE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jul 2023 10:52:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233072AbjGKOwC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Jul 2023 10:52:02 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4DBEC10D5
        for <devicetree@vger.kernel.org>; Tue, 11 Jul 2023 07:52:01 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2b69dcf45faso92566751fa.0
        for <devicetree@vger.kernel.org>; Tue, 11 Jul 2023 07:52:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689087119; x=1691679119;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d01k9Ge3oJeb+EotweQVjXGt8nCY34ZNLG+24WtV2Go=;
        b=ZzN6n7NGAxUMCQxrYps6kPtQ1wSAWkpXqD65DWVJA8pw+iuIEwYPCWYua/yFXhYx2x
         oVDJ8louT+4FJQvgGAT0mtZWCX+SCSPwXQ/0KcolhiUFagjJQMDxOiTXfRFZmygoNBpi
         plxmNTpv0nlABxKZyipDITwaSjTGxnSPPpILz2fYmpxTm3PxL0cbb+wtNRCRqWulqgim
         Ghlk2aMaq6zMicub321xhlYeA3z8tMUnkqdpEXfrr0vHlC5ixbsp8FsG858dtJ+COQuF
         jhnj3FbRpndXQ93r+9yfoHmc3k7wtvzztK29PSiiy3Uhqb6nR2Lru/1FeeJkGCXz1qdA
         QN+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689087119; x=1691679119;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=d01k9Ge3oJeb+EotweQVjXGt8nCY34ZNLG+24WtV2Go=;
        b=Rnr1/znoIqiqd69HRH8YVZiMs5fcHlxOMnJ8gy2WH02/l/BmuNtMvnZAd4HBXkhN1/
         iK1BT4UHDEmtL0Chd9cjivhhPQAiR31Hw3SEqxGsGPN4N7sBZEIRiyaqTjuHM/e9msBu
         Mf3BgfpWs0WCvGdGaaNtG4uqVdNflaPYmBFoA40T7B7oqo1FtJuLJRDc4OWVzaP69qAY
         fg8kO5Eg0TCIMRnmz/1R4eOrxBN6oI+cfiDont7lq5/xd5xVLKBsNbHoSKgNJBmnsfUF
         JfxynklcuCViuNaHxGxYqtYBLExxkSOs+GKLj+n+kMzqo1Fgr2yYT0hjS+s/WOPS7fgK
         f4Xw==
X-Gm-Message-State: ABy/qLazsSRHrPPsPm5VpSWnMWVhPpcbMvJ4Y+aqHQpMpTJOJisDTbdK
        Lw8WfO2XYddrJCYrj6eqAMQm7g==
X-Google-Smtp-Source: APBJJlEqpyz0+8PVJ3sjU74gxni/QIjS/+CPMvnAUu6blMyE+161w7Q1Oc+t+Cu4L7Yt/AZllW17Kg==
X-Received: by 2002:a2e:a30b:0:b0:2af:25cf:92ae with SMTP id l11-20020a2ea30b000000b002af25cf92aemr15124625lje.22.1689087119718;
        Tue, 11 Jul 2023 07:51:59 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id a10-20020a2eb16a000000b002b6ee363337sm492454ljm.120.2023.07.11.07.51.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jul 2023 07:51:59 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Philipp Zabel <p.zabel@pengutronix.de>,
        Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH v4 07/11] arm64: dts: qcom: sm6350: switch UFS QMP PHY to new style of bindings
Date:   Tue, 11 Jul 2023 17:51:49 +0300
Message-Id: <20230711145153.4167820-8-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230711145153.4167820-1-dmitry.baryshkov@linaro.org>
References: <20230711145153.4167820-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
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
index c2b5d56ba242..cf12426daf67 100644
--- a/arch/arm64/boot/dts/qcom/sm6350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6350.dtsi
@@ -1142,7 +1142,7 @@ ufs_mem_hc: ufs@1d84000 {
 			      <0 0x01d90000 0 0x8000>;
 			reg-names = "std", "ice";
 			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
-			phys = <&ufs_mem_phy_lanes>;
+			phys = <&ufs_mem_phy>;
 			phy-names = "ufsphy";
 			lanes-per-direction = <2>;
 			#reset-cells = <1>;
@@ -1187,10 +1187,7 @@ ufs_mem_hc: ufs@1d84000 {
 
 		ufs_mem_phy: phy@1d87000 {
 			compatible = "qcom,sm6350-qmp-ufs-phy";
-			reg = <0 0x01d87000 0 0x18c>;
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0 0x01d87000 0 0x1000>;
 
 			clock-names = "ref",
 				      "ref_aux";
@@ -1200,16 +1197,9 @@ ufs_mem_phy: phy@1d87000 {
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

