Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4E3B165CF60
	for <lists+devicetree@lfdr.de>; Wed,  4 Jan 2023 10:18:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234672AbjADJSl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Jan 2023 04:18:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40970 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234593AbjADJS2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Jan 2023 04:18:28 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6CF7D1B1FD
        for <devicetree@vger.kernel.org>; Wed,  4 Jan 2023 01:18:26 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id az7so7898866wrb.5
        for <devicetree@vger.kernel.org>; Wed, 04 Jan 2023 01:18:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uPKIsPLN5aJ8m2V2u6J9M4j3Y5N3lS/nTl2zakrSabY=;
        b=KgUYk1XAtUleUltJuZN4EAebl/MKD0OC/bLHcREoQUoAJESZqUAA+ggjbUljS7+dx+
         uNxOyDWiomIdomHY4ZVc/RJf3hj9StKjkcVBdYcRxxPL5DT1i9quM3easaql/mQVRVLT
         2Fcyag8lhZS9oOmoPPYOBLovzgKYygb3QRvgVak0Z1UPEhQ+LmR4TEOROGJ82t8R9ntY
         XUiJiBA2gqk4q74G2W7jc43JM5ONerTiU3mFIhxZlgCoam2yEwzE96SmKyvOSKEOXKA2
         310qHkjm8SeZQOF/MWHs6zsDScsWBfxhrBFf1ejMiJwBe985eyYjHjtdquAMsJquOXe+
         YeKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uPKIsPLN5aJ8m2V2u6J9M4j3Y5N3lS/nTl2zakrSabY=;
        b=SpiY2OFdXE8bWtwAdGgDjur+i+6mJ846/oIwZMid3H/TxZzVgHZzQh46fAM3vF8TD4
         WJSMtVh34VgieeT+Qsg3NMiKNCsq7xS00RiEIRKjKGtheYZLLYz5a1RmNtdqXUxapSCr
         tBWDpFuVHXDHrkgN9T+blMS+IKJ/d954TbAJO3tl0LyS1hoAN8HcvqGNtyAhxP/1LSWB
         nmnI//uJ5yj4rzt51eQnm4yT5tYJGW1XDCn+4FK4Gdq0FdbOOZ1MnOSQmX846T+g/2vB
         iLR+76kts72upjWdL9/jiqDSdKK8HzsdNyRkO28Dc+XC3H1a/PxSMVaYShPYGp5rWMn9
         d9hQ==
X-Gm-Message-State: AFqh2krj92l7ElGBE91w3Ajqmf7/MZh+vUok1oZbnDCEiy7zQ1704fRn
        3m2n+DvW6R69isE/SOD2Iv4b6v5qpMTTDm3/
X-Google-Smtp-Source: AMrXdXtETcqHUy17vv9iuJw/kb4eyU0lIMU44u+42OJLTYOJRHugOP8yr8b0m0qLuDUgcqXnA/B4dg==
X-Received: by 2002:a5d:404a:0:b0:242:5cf5:3c2c with SMTP id w10-20020a5d404a000000b002425cf53c2cmr24539724wrp.15.1672823904927;
        Wed, 04 Jan 2023 01:18:24 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id k6-20020adff5c6000000b002a01e64f7a1sm3488656wrp.88.2023.01.04.01.18.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Jan 2023 01:18:24 -0800 (PST)
From:   Neil Armstrong <neil.armstrong@linaro.org>
Date:   Wed, 04 Jan 2023 10:18:22 +0100
Subject: [PATCH 3/3] arm64: dts: qcom: sm8550-mtp: add DSI panel
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230104-topic-sm8550-upstream-dts-display-v1-3-aeab9751928f@linaro.org>
References: <20230104-topic-sm8550-upstream-dts-display-v1-0-aeab9751928f@linaro.org>
In-Reply-To: <20230104-topic-sm8550-upstream-dts-display-v1-0-aeab9751928f@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.11.1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add nodes for the Visionox VTDR6130 found on the SM8550-MTP
device.

TLMM states are also added for the Panel reset GPIO and
Tearing Effect signal for when the panel is running in
DSI Command mode.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550-mtp.dts | 56 +++++++++++++++++++++++++++++++++
 1 file changed, 56 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
index 5b7e301cc2a2..cbb63a31f0ff 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
@@ -370,6 +370,34 @@ &mdss {
 &mdss_dsi0 {
 	vdda-supply = <&vreg_l3e_1p2>;
 	status = "okay";
+
+	panel@0 {
+		compatible = "visionox,vtdr6130";
+		reg = <0>;
+
+		pinctrl-names = "default", "sleep";
+		pinctrl-0 = <&sde_dsi_active>, <&sde_te_active>;
+		pinctrl-1 = <&sde_dsi_suspend>, <&sde_te_suspend>;
+
+		vddio-supply = <&vreg_l12b_1p8>;
+		vci-supply = <&vreg_l13b_3p0>;
+		vdd-supply = <&vreg_l11b_1p2>;
+
+		reset-gpios = <&tlmm 133 GPIO_ACTIVE_LOW>;
+
+		status = "okay";
+
+		port {
+			panel0_in: endpoint {
+				remote-endpoint = <&mdss_dsi0_out>;
+			};
+		};
+	};
+};
+
+&mdss_dsi0_out {
+	remote-endpoint = <&panel0_in>;
+	data-lanes = <0 1 2 3>;
 };
 
 &mdss_dsi0_phy {
@@ -415,6 +443,34 @@ &sleep_clk {
 
 &tlmm {
 	gpio-reserved-ranges = <32 8>;
+
+	sde_dsi_active: sde-dsi-active-state {
+		pins = "gpio133";
+		function = "gpio";
+		drive-strength = <8>;
+		bias-disable;
+	};
+
+	sde_dsi_suspend: sde-dsi-suspend-state {
+		pins = "gpio133";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-pull-down;
+	};
+
+	sde_te_active: sde-te-active-state {
+		pins = "gpio86";
+		function = "mdp_vsync";
+		drive-strength = <2>;
+		bias-pull-down;
+	};
+
+	sde_te_suspend: sde-te-suspend-state {
+		pins = "gpio86";
+		function = "mdp_vsync";
+		drive-strength = <2>;
+		bias-pull-down;
+	};
 };
 
 &uart7 {

-- 
2.34.1
