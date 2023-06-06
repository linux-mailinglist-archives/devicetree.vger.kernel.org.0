Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1A59B724A32
	for <lists+devicetree@lfdr.de>; Tue,  6 Jun 2023 19:29:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237510AbjFFR30 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Jun 2023 13:29:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36768 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238741AbjFFR3Z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Jun 2023 13:29:25 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02B1010F7
        for <devicetree@vger.kernel.org>; Tue,  6 Jun 2023 10:29:23 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-4f629ccb8ebso3264805e87.1
        for <devicetree@vger.kernel.org>; Tue, 06 Jun 2023 10:29:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686072561; x=1688664561;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IvhUCWqhjH2YSf2YunHhXS1OL+PniFV2PkQ2fk5acEE=;
        b=ah5L2IOyvfN+HotLxMNe7BPm6sUI9o5tYTZRB/Efba8HRvDIanv68Y2s0A1eGZryAq
         /nsqy91+nhdQ+SPdl6iw15JeC7XMzxuek51STCGxJZDQAF1jB7s2aNA0e9g+DhTpmXNd
         +ySgDqXSGTEJj2qgAI04LFn9k8Sil5vqSh2kTBlVIsLi58xLdCjB2Zr43OUbkeGO+YMm
         tDoG6soUGULMLp76hZQcxfQJI0oQa7bPewoAVoLftgl5cscQgh6N0YXDrkUhAG3c8m++
         3tXi2ZAn0E9B0S1yoFJihyB+AwmPWLoFePZXqGp5ZRr2K+yFJg7EalB4c1aJCzS2K7eA
         eyIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686072561; x=1688664561;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IvhUCWqhjH2YSf2YunHhXS1OL+PniFV2PkQ2fk5acEE=;
        b=TVq4RYhCUWsxPvgRkgDUKeYnJPcCqEAJQ4M70SDZwpC3nsf9MBWBDzLoAv5LuYwoQS
         hHhQ2z9MD/XuqVl8vg8sJzRGKiBuPhf0nP5ur64esuECKzu4BPNk68D+5J2aNXYvpOVp
         9N+54NqyEOOocBufBY4ziZg57yaE9lfqRB50fy7ZNjtXVPN9atIVSHjmuN3jz1PcuLC0
         PfidxC7zsWrhPbT693sZJQQXABh8x/e1hCsWOUXfH+K+YY+mvm2QHzBuEy5uweIwZOy2
         P+1iRuH642uggTuqvJ5jCezkxztl1uS/VxVZPdus78NCQU7GkESMjTILpClzsERr9wTn
         vZvA==
X-Gm-Message-State: AC+VfDyB/Drnl2HjDxPhBqQMV/rt1vWYQoYhpX/qyC7jsFl+HT7Z2hOt
        mqqSkM4yH4kk8eXS87VxTGPg1rWSH3Kr4r6igDE=
X-Google-Smtp-Source: ACHHUZ6KLn/LzWrKYDOD2Ach3mSJTKKV0/vpFLcmeIp4vVd8G2qoeIttJ3jCH5OQuVWGNqYM/e25sw==
X-Received: by 2002:ac2:46f9:0:b0:4f6:3677:553 with SMTP id q25-20020ac246f9000000b004f636770553mr1267448lfo.38.1686072560900;
        Tue, 06 Jun 2023 10:29:20 -0700 (PDT)
Received: from [192.168.1.101] (abyl150.neoplus.adsl.tpnet.pl. [83.9.31.150])
        by smtp.gmail.com with ESMTPSA id y4-20020a05651c020400b002ab1536377fsm1884219ljn.105.2023.06.06.10.29.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jun 2023 10:29:20 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Tue, 06 Jun 2023 19:29:19 +0200
Subject: [PATCH] arm64: dts: qcom: qcm2290: Add USB3 PHY
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230606-topic-qcm2290_usb3-v1-1-3e8fbcb89088@linaro.org>
X-B4-Tracking: v=1; b=H4sIAO5sf2QC/x2N0QrCMAwAf2Xk2UDNWLH+ioikNXWB2c3GiTD27
 xYf7+C4DUyqisG526DKR03n0uB46CCNXB6Cem8M5Kh33nl8z4smfKUnUXC31WKPQ/YnphAGzh5
 aGNkEY+WSxpaWdZqaXKpk/f5Pl+u+/wAwVtjWeQAAAA==
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1686072559; l=2128;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=AkMqnuWaPJkCWdsPFrwJlwWzF/mTmk/8kpPTns9s3nI=;
 b=kig3KlbpKeoUjT3Jf+ujcsgfVhZWjBtl0iM/EnPZsdV/V/gyJoGPM0G8DItA5hUQS9w278qcb
 PrrBU/3a8ffAWD+d2Q/o+wF2eAOIDNT2f3O5A/vfsxggnAlaspwkG7I
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Describe the USB3 PHY and hook it up to the USB3 controller.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
The corresponding patch enabling in on RB1 will be posted after the
regulator situation gets resolved. It is confirmed working with a
totally hacked-up regulator setup though..
---
 arch/arm64/boot/dts/qcom/qcm2290.dtsi | 30 ++++++++++++++++++++++++++++--
 1 file changed, 28 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qcm2290.dtsi b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
index b29bc4e4b837..1a02faacedda 100644
--- a/arch/arm64/boot/dts/qcom/qcm2290.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
@@ -577,6 +577,32 @@ usb_hsphy: phy@1613000 {
 			status = "disabled";
 		};
 
+		usb_qmpphy: phy@1615000 {
+			compatible = "qcom,qcm2290-qmp-usb3-phy";
+			reg = <0x0 0x01615000 0x0 0x1000>;
+
+			clocks = <&gcc GCC_AHB2PHY_USB_CLK>,
+				 <&gcc GCC_USB3_PRIM_CLKREF_CLK>,
+				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>,
+				 <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
+			clock-names = "cfg_ahb",
+				      "ref",
+				      "com_aux",
+				      "pipe";
+
+			resets = <&gcc GCC_USB3_PHY_PRIM_SP0_BCR>,
+				 <&gcc GCC_USB3PHY_PHY_PRIM_SP0_BCR>;
+			reset-names = "phy",
+				      "phy_phy";
+
+			#clock-cells = <0>;
+			clock-output-names = "usb3_phy_pipe_clk_src";
+
+			#phy-cells = <0>;
+
+			status = "disabled";
+		};
+
 		qfprom@1b44000 {
 			compatible = "qcom,qcm2290-qfprom", "qcom,qfprom";
 			reg = <0x0 0x01b44000 0x0 0x3000>;
@@ -1001,8 +1027,8 @@ usb_dwc3: usb@4e00000 {
 				compatible = "snps,dwc3";
 				reg = <0x0 0x04e00000 0x0 0xcd00>;
 				interrupts = <GIC_SPI 255 IRQ_TYPE_LEVEL_HIGH>;
-				phys = <&usb_hsphy>;
-				phy-names = "usb2-phy";
+				phys = <&usb_hsphy>, <&usb_qmpphy>;
+				phy-names = "usb2-phy", "usb3-phy";
 				iommus = <&apps_smmu 0x120 0x0>;
 				snps,dis_u2_susphy_quirk;
 				snps,dis_enblslpm_quirk;

---
base-commit: 6db29e14f4fb7bce9eb5290288e71b05c2b0d118
change-id: 20230606-topic-qcm2290_usb3-5f68a2995af6

Best regards,
-- 
Konrad Dybcio <konrad.dybcio@linaro.org>

