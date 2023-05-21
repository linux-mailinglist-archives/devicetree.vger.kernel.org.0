Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A1B0A70B04B
	for <lists+devicetree@lfdr.de>; Sun, 21 May 2023 22:38:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229933AbjEUUil (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 21 May 2023 16:38:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48078 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230381AbjEUUik (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 21 May 2023 16:38:40 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 685D4E6
        for <devicetree@vger.kernel.org>; Sun, 21 May 2023 13:38:39 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-4eed764a10cso5800542e87.0
        for <devicetree@vger.kernel.org>; Sun, 21 May 2023 13:38:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684701517; x=1687293517;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qEd5aRZcblmvyovy6XBo3UP3UrwNyl766kcTf3FoCzI=;
        b=GPdfXU9BGMlDbOLV3VTQgyLenO9bA/6TjNpbelheLDfE2YzD0Nz0n8NDS3TWBQdesb
         yRw/9lYJKCwW2xz3XDUxhh7A5R4ZsaF8a0C/q4qz4pzbFCW5hL9nBcbqSbTaIkpUoRQP
         2i5HaNG9SFojW3ytTA+soiLiWusyXL00JzXw+B+QqaCo10mkYZ3z8nEyS3qDN+q2Yj4l
         IyIMVbjLZf8Pjju4EYbH+RkGZibDRB3QophkljWnaGwf245DOojwSddFzQ7uoP39+VVd
         Z68vwo2ljFTgbN6X6UMNyIMS7ux49d4o3oY/5/n3l1Mo8flFNHHDlr7YOBkCPEG7S17Z
         ts3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684701517; x=1687293517;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qEd5aRZcblmvyovy6XBo3UP3UrwNyl766kcTf3FoCzI=;
        b=StjEQVO4aeZ27NG1U4QPXH+j5Z1pbib5khJAhI/AlaGS2AXCID07EJC+jH+STNgrJ/
         rQU7Va99bAcFYEVRwfgNl0OI8sGGK0Zq1Cfh+Iig1VVg8lTmvQ4M7bru2ddARh/XluTr
         f7q7CZsaj+cjJTiJ9i2BxmqxUuSXAlAKXUMVXQhEINbr6vdR/2dbfTTDJo4h/+MhKpuR
         ay4AvrvcZQWczi7ueYWmvxDo7LgTF5CmzBzld74GJy/UEGgXejh7VF2lsn/hs2PtmoBQ
         Lv/Q1tPrEF6WeJtOFj1AtTwEI6HQ/lspbmuZ3o4OBttAs3Y8OfGIWG8hkmhyjvVZwyR3
         X+tw==
X-Gm-Message-State: AC+VfDxQztybgOMsrOKgeO1mN5jjlX5UQge7EW/vXilClZ4nJa/Tcdqk
        c1iJ3pouvqqQW5wINmvJwAHbBg==
X-Google-Smtp-Source: ACHHUZ6JujLJRMd05D4SiIm/3GUQkEmlQknMso9xKifylodq08Hvw+PdAvGUOWVMvDbOg+NT3G8skg==
X-Received: by 2002:ac2:5217:0:b0:4f1:4051:d77b with SMTP id a23-20020ac25217000000b004f14051d77bmr2854849lfl.60.1684701517791;
        Sun, 21 May 2023 13:38:37 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id a15-20020a056512020f00b004f3886a63d1sm718894lfo.298.2023.05.21.13.38.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 May 2023 13:38:37 -0700 (PDT)
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
        devicetree@vger.kernel.org, Johan Hovold <johan@kernel.org>
Subject: [PATCH v2 03/11] arm64: dts: qcom: msm8996: switch UFS QMP PHY to new style of bindings
Date:   Sun, 21 May 2023 23:38:26 +0300
Message-Id: <20230521203834.22566-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230521203834.22566-1-dmitry.baryshkov@linaro.org>
References: <20230521203834.22566-1-dmitry.baryshkov@linaro.org>
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

Change the UFS QMP PHY to use newer style of QMP PHY bindings (single
resource region, no per-PHY subnodes).

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8996.dtsi | 25 +++++++++----------------
 1 file changed, 9 insertions(+), 16 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
index 2b35cb3f5292..2b65c608a57e 100644
--- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
@@ -726,9 +726,9 @@ gcc: clock-controller@300000 {
 				 <&pciephy_1>,
 				 <&pciephy_2>,
 				 <&ssusb_phy_0>,
-				 <&ufsphy_lane 0>,
-				 <&ufsphy_lane 1>,
-				 <&ufsphy_lane 2>;
+				 <&ufsphy 0>,
+				 <&ufsphy 1>,
+				 <&ufsphy 2>;
 			clock-names = "cxo",
 				      "cxo2",
 				      "sleep_clk",
@@ -1993,7 +1993,7 @@ ufshc: ufshc@624000 {
 			reg = <0x00624000 0x2500>;
 			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
 
-			phys = <&ufsphy_lane>;
+			phys = <&ufsphy>;
 			phy-names = "ufsphy";
 
 			power-domains = <&gcc UFS_GDSC>;
@@ -2046,25 +2046,18 @@ ufshc: ufshc@624000 {
 
 		ufsphy: phy@627000 {
 			compatible = "qcom,msm8996-qmp-ufs-phy";
-			reg = <0x00627000 0x1c4>;
-			#address-cells = <1>;
-			#size-cells = <1>;
-			ranges;
+			reg = <0x00627000 0x1000>;
 
 			clocks = <&gcc GCC_UFS_CLKREF_CLK>;
 			clock-names = "ref";
 
 			resets = <&ufshc 0>;
 			reset-names = "ufsphy";
-			status = "disabled";
 
-			ufsphy_lane: phy@627400 {
-				reg = <0x627400 0x12c>,
-				      <0x627600 0x200>,
-				      <0x627c00 0x1b4>;
-				#clock-cells = <1>;
-				#phy-cells = <0>;
-			};
+			#clock-cells = <1>;
+			#phy-cells = <0>;
+
+			status = "disabled";
 		};
 
 		camss: camss@a00000 {
-- 
2.39.2

