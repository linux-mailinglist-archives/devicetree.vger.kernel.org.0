Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D043E7820E6
	for <lists+devicetree@lfdr.de>; Mon, 21 Aug 2023 02:25:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232196AbjHUAZw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 20 Aug 2023 20:25:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41324 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232201AbjHUAZv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 20 Aug 2023 20:25:51 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18C3DB8
        for <devicetree@vger.kernel.org>; Sun, 20 Aug 2023 17:25:49 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2bcbfb3705dso4712251fa.1
        for <devicetree@vger.kernel.org>; Sun, 20 Aug 2023 17:25:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692577547; x=1693182347;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZpBNHpYglDb91ucrUq7ha/N1sRsDyurprg1I9sqkvpM=;
        b=Ve2bGEtzV1B8iq1jUe5uhNR76V7VY499ywn4IKn/QjganYP6xYHKn+zVVikLna30Wn
         Z4RqRnLxbS5dF+M8Qdi7+zO9DIFNuOe/p4iGgF8S5GTMpGfpx6wIF0QworwZNbtwN9s8
         LTFeeoYXjOUQb8FN1AcWfa639Xe9/DvecD7iyAudIvnmCRorfMIfXGHUC/P25ssZ3sp8
         aYjyb1ddZ/JBmpQieUVCcxPfIePouQ6Gj3N7R1IWL/KcT9sO/x8lr7+HAvyqIx15iujL
         04QN/mXZHxGwWzJkUn2rHAyXmkjH1qZWJsjnS9cbkWeBbrZyuNs6CuIoRQWZPObfzVCy
         1e+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692577547; x=1693182347;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZpBNHpYglDb91ucrUq7ha/N1sRsDyurprg1I9sqkvpM=;
        b=NbQQvOuDCGbuJhXhrX9gzxMQdWiV6LoPTmYBsaCAVm+XpYNQCf6PML+QEQRxth+cYq
         1fZCQYWhxUSsp4h1t41KHaBGByAs3Ml4cXzKhA2Qugur/n2RLnT/I1BTBm+GdvWagULf
         BG6Jkt6XmZZaitTCOz8Qx5TsZaOxIozQ08oEdvUYpRMl0yn0bmx1IIBqoAHdhQ/Scr+g
         +urjcgAOF3jPMZIcTb6leR7Fv9puReo5E7tBcNAuHVXM1fVSDN7TZS2ziyHRwUjP7Mqf
         LqmzFRY1uqG2UywnoXR4ZkfMH5d69afp+YcsrirySDFHCxalWJGwL9mRbpZFGk8Se1NP
         KQ9g==
X-Gm-Message-State: AOJu0YwYD2I9Bi2Z0FAuE0WvbTs6VkMDCztMm+FqVcip0/rafJr1c1b2
        DqCIgZcjIEBdAoBS1/HVQPM8Q26QLy2dI5/khdM=
X-Google-Smtp-Source: AGHT+IHvV56xREbDBS0Zw1zRDCkTfHxKXpSlpk9BmpE6LFk42DhGYDo+2UzzYrn1f8mV3jvH9o2CPg==
X-Received: by 2002:a2e:8416:0:b0:2b6:ddab:506a with SMTP id z22-20020a2e8416000000b002b6ddab506amr3852069ljg.34.1692577547389;
        Sun, 20 Aug 2023 17:25:47 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id h27-20020a2eb0fb000000b002b6fe751b6esm1964923ljl.124.2023.08.20.17.25.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Aug 2023 17:25:46 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     Philipp Zabel <p.zabel@pengutronix.de>,
        Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH v2 13/16] arm64: dts: qcom: sm8250: switch USB QMP PHY to new style of bindings
Date:   Mon, 21 Aug 2023 03:25:32 +0300
Message-Id: <20230821002535.585660-14-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230821002535.585660-1-dmitry.baryshkov@linaro.org>
References: <20230821002535.585660-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Change the USB QMP PHY to use newer style of QMP PHY bindings (single
resource region, no per-PHY subnodes).

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 38 ++++++++++++----------------
 1 file changed, 16 insertions(+), 22 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index abe39b0470da..974bdc1a9f34 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -3575,32 +3575,26 @@ usb_1_qmpphy: phy@88e8000 {
 
 		usb_2_qmpphy: phy@88eb000 {
 			compatible = "qcom,sm8250-qmp-usb3-uni-phy";
-			reg = <0 0x088eb000 0 0x200>;
-			status = "disabled";
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0 0x088eb000 0 0x1000>;
 
 			clocks = <&gcc GCC_USB3_SEC_PHY_AUX_CLK>,
-				 <&rpmhcc RPMH_CXO_CLK>,
 				 <&gcc GCC_USB3_SEC_CLKREF_EN>,
-				 <&gcc GCC_USB3_SEC_PHY_COM_AUX_CLK>;
-			clock-names = "aux", "ref_clk_src", "ref", "com_aux";
+				 <&gcc GCC_USB3_SEC_PHY_COM_AUX_CLK>,
+				 <&gcc GCC_USB3_SEC_PHY_PIPE_CLK>;
+			clock-names = "aux",
+				      "ref",
+				      "com_aux",
+				      "pipe";
+			clock-output-names = "usb3_uni_phy_pipe_clk_src";
+			#clock-cells = <0>;
+			#phy-cells = <0>;
 
-			resets = <&gcc GCC_USB3PHY_PHY_SEC_BCR>,
-				 <&gcc GCC_USB3_PHY_SEC_BCR>;
-			reset-names = "phy", "common";
+			resets = <&gcc GCC_USB3_PHY_SEC_BCR>,
+				 <&gcc GCC_USB3PHY_PHY_SEC_BCR>;
+			reset-names = "phy",
+				      "phy_phy";
 
-			usb_2_ssphy: phy@88eb200 {
-				reg = <0 0x088eb200 0 0x200>,
-				      <0 0x088eb400 0 0x200>,
-				      <0 0x088eb800 0 0x800>;
-				#clock-cells = <0>;
-				#phy-cells = <0>;
-				clocks = <&gcc GCC_USB3_SEC_PHY_PIPE_CLK>;
-				clock-names = "pipe0";
-				clock-output-names = "usb3_uni_phy_pipe_clk_src";
-			};
+			status = "disabled";
 		};
 
 		sdhc_2: mmc@8804000 {
@@ -3905,7 +3899,7 @@ usb_2_dwc3: usb@a800000 {
 				iommus = <&apps_smmu 0x20 0>;
 				snps,dis_u2_susphy_quirk;
 				snps,dis_enblslpm_quirk;
-				phys = <&usb_2_hsphy>, <&usb_2_ssphy>;
+				phys = <&usb_2_hsphy>, <&usb_2_qmpphy>;
 				phy-names = "usb2-phy", "usb3-phy";
 			};
 		};
-- 
2.39.2

