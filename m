Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EEFDC6C3D7E
	for <lists+devicetree@lfdr.de>; Tue, 21 Mar 2023 23:13:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230046AbjCUWM4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Mar 2023 18:12:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32770 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230017AbjCUWMx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Mar 2023 18:12:53 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC19E570BF
        for <devicetree@vger.kernel.org>; Tue, 21 Mar 2023 15:12:50 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id g17so21003250lfv.4
        for <devicetree@vger.kernel.org>; Tue, 21 Mar 2023 15:12:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679436769;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vgZbupn0k37+a4wCBuLR6J1C7AEfEIAI+ys1wz8gGnE=;
        b=Z/CYlLlhpcaLLmW9gO2Tj2zwHGQsTDfqQG/LiFQ5M/jTiI97kzwwakeIV2Nt4yrRcy
         lVy5dAd3M4N3HgRa44E6mydVkZpB8AiPeFHdqUG1cD4u9c/hM/1C842YJisdaMM3uEeC
         kwotOz25RSfIz9kdx3ccetBK8G56AZ+/jarDhgxQZv3W1G8ptAGVEgsd8s9YWp2xKCTg
         RmLhSZPvtQTYJXJ0nM4qEP7DyuaJ+sEcOMV76RbW3wmmIHzQ5iny2x9mddOvFBvIBw13
         7KZdTw43jq9SCzho0mTbn0RKY/mdZXVfTNsOpeL1gWnMR6lnypNEywuIusySYI/l/mF4
         /AKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679436769;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vgZbupn0k37+a4wCBuLR6J1C7AEfEIAI+ys1wz8gGnE=;
        b=F8qCyDiSpXsEjVXLlfwYurr6xVucypvo9Gcolhw8T/8GlI4BNowOD8sa6EBBXjE5Qc
         WwZ/nP0bOBT9giQ9gcu3R3Spe0E5jtJwVS2rbVi/5b6PFiKHhBsrfHRbU8UNin7ZHij6
         oRTnnV4/tsiYpDD7E0uYl0qBBlS7zfCLxJVzKPtyfnKIATaLDiwy7qlWTn9tfGbJGVRm
         /0hawCGOQUY8O+YnZDGVt6/s523gz2NNRQj3jqaqh1Fcp0VsX1nze7KEDbrqJP7lPuUe
         57lWu9nctCKSUfq4EU1YcfgBdGqWvjBU7fatqYkvqIptq+6i2QVgnv77KIPhytW5WaNA
         Iatg==
X-Gm-Message-State: AO0yUKVL88Gmjo1vaJCDI+HV/3GXTfQlSvf7ditRLZsfX5PD6SSrJKNr
        po/qj77ryepWPxf1umFfxPxSxg==
X-Google-Smtp-Source: AK7set8NC1hHuAr9DZDY1/qyIjOyi6D1y8hG1sM5srS04pt4cLnvMWBC1/yxzqGuooDq7+dOWU5i7w==
X-Received: by 2002:ac2:5510:0:b0:4d5:a0d2:f542 with SMTP id j16-20020ac25510000000b004d5a0d2f542mr1366826lfk.18.1679436769199;
        Tue, 21 Mar 2023 15:12:49 -0700 (PDT)
Received: from [192.168.1.101] (abym238.neoplus.adsl.tpnet.pl. [83.9.32.238])
        by smtp.gmail.com with ESMTPSA id o15-20020a056512050f00b004e9c983a007sm1220344lfb.289.2023.03.21.15.12.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Mar 2023 15:12:48 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Tue, 21 Mar 2023 23:12:30 +0100
Subject: [PATCH 3/4] arm64: dts: qcom: sm8350-sagami: Hook up USB-C Display
 Port
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230321-topic-sagami_dp-v1-3-340c8bce4276@linaro.org>
References: <20230321-topic-sagami_dp-v1-0-340c8bce4276@linaro.org>
In-Reply-To: <20230321-topic-sagami_dp-v1-0-340c8bce4276@linaro.org>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Andy Gross <agross@kernel.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1679436764; l=2565;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=JKAzoWwTB0GRos4VagsWq8iTqG3cdlc3p5d9QT8cpTA=;
 b=KSPF1FGKDbORSghLobT6NXwThP7VyXehthaet7Wg7ls5lLx37QiSElsR+s4SIsYj4Um4ulj310fW
 +/tN1RoECe+OksWa7HgrcVsI/r4jgHp2d4KK1xuMwtlBgUhI9sFn
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Sagami devices feature Display Port on their USB-C port. Add the
necessary nodes to support it.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 .../boot/dts/qcom/sm8350-sony-xperia-sagami.dtsi   | 72 ++++++++++++++++++++++
 1 file changed, 72 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami.dtsi b/arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami.dtsi
index 21462b6de686..b2baa81baf5e 100644
--- a/arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami.dtsi
@@ -120,6 +120,23 @@ pmic_glink_dwc3_ss_in: endpoint {
 						remote-endpoint = <&usb_1_dwc3_ss>;
 					};
 				};
+
+				port@2 {
+					reg = <2>;
+
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					pmic_glink_dp_in: endpoint@0 {
+						reg = <0>;
+						remote-endpoint = <&mdss_dp_altmode>;
+					};
+
+					pmic_glink_sbu_mux_out: endpoint@1 {
+						reg = <1>;
+						remote-endpoint = <&sbu_mux_in>;
+					};
+				};
 			};
 		};
 	};
@@ -140,6 +157,26 @@ ramoops@ffc00000 {
 		};
 	};
 
+	sbu-mux {
+		/* TODO: switch to a proper driver when one gets upstreamed */
+		compatible = "onnn,nb7vpq904m-mux", "gpio-sbu-mux";
+
+		enable-gpios = <&tlmm 54 GPIO_ACTIVE_HIGH>;
+		select-gpios = <&tlmm 55 GPIO_ACTIVE_HIGH>;
+		svid = /bits/ 16 <0xff01>;
+
+		mode-switch;
+		orientation-switch;
+
+		pinctrl-0 = <&sbu_sw_oe &sbu_sw_sel>;
+
+		port {
+			sbu_mux_in: endpoint {
+				remote-endpoint = <&pmic_glink_sbu_mux_out>;
+			};
+		};
+	};
+
 	vph_pwr: vph-pwr-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "vph_pwr";
@@ -595,6 +632,25 @@ &ipa {
 	status = "okay";
 };
 
+&mdss {
+	status = "okay";
+};
+
+&mdss_dp {
+	data-lanes = <0 1 2 3>;
+	status = "okay";
+
+	ports {
+		port@1 {
+			reg = <1>;
+
+			mdss_dp_altmode: endpoint {
+				remote-endpoint = <&pmic_glink_dp_in>;
+			};
+		};
+	};
+};
+
 &mpss {
 	status = "okay";
 	firmware-name = "qcom/sm8350/Sony/sagami/modem.mbn";
@@ -916,6 +972,22 @@ ts_int_default: ts-int-default-state {
 		input-enable;
 	};
 
+	sbu_sw_oe: sbu-sw-oe-state {
+		pins = "gpio54";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-disable;
+		output-low;
+	};
+
+	sbu_sw_sel: sbu-sw-sel-state {
+		pins = "gpio55";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-disable;
+		output-low;
+	};
+
 	sdc2_card_det_active: sd-card-det-active-state {
 		pins = "gpio92";
 		function = "gpio";

-- 
2.40.0

