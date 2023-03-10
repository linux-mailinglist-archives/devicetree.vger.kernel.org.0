Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 288336B411D
	for <lists+devicetree@lfdr.de>; Fri, 10 Mar 2023 14:49:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230427AbjCJNti (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Mar 2023 08:49:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52444 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230422AbjCJNtd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Mar 2023 08:49:33 -0500
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC66290B66
        for <devicetree@vger.kernel.org>; Fri, 10 Mar 2023 05:49:30 -0800 (PST)
Received: by mail-ed1-x529.google.com with SMTP id cw28so20693171edb.5
        for <devicetree@vger.kernel.org>; Fri, 10 Mar 2023 05:49:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678456169;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=i48EsZfNCkG2lMhpLBNlt/dxwRuRTfVAXVflKAyyUt4=;
        b=wJb8IWtKvwgm2k2Em5crFpq2Snp5iWs4/EiipxOY+1UAtENo5vN5fqBGgTV+PihMCm
         psOdR5FbLIX85LTDgOE98zB0Egm0bh45DfdaaHhAPfMK9AjuJHeSWSYfXIqFKKDkNnDM
         WjwJO4luG/WGA6Umx1TtKosasCKJ81yuTRoTlRYsrrzmFv5+wCCElZzpDXJZJ1e132Ye
         7sarLW9UXXN/6V1V0kW0mk8PsZvTCY6Tzs/rvHVntauctmy6M52fyhk3P8XzvdF6njCh
         1LItts69z+U+gYK6BsT2RU1n6jkgFDZyP9LNKS2zjRbnVr43qW8SK0c7UH8a0KURSW8F
         hzjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678456169;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=i48EsZfNCkG2lMhpLBNlt/dxwRuRTfVAXVflKAyyUt4=;
        b=vJz6JyZ6Fpm5QfEcIXKUlJbDg4qfFKmFM+3XmJpbduewUOmgudpEX9eK9Dq1RwDYJM
         NrxjLtW7/aJ95C/ni9UjcmbIcmjo3LKbm3ffh2Pp1eC7WISoIILC4F99SMAVffkJiane
         Svfjsc6tI7Lw7WU5p/GQz+ryY5tZ3ScIbDKBQxfbBQRqTRJquUjMLwjgeJZIDL06qnqq
         OH4PNiPKj/NQkufVU332gzruqJeYgo9LDYYuGVFTk+0eQkw0ZO+ACS2UcbsamthRNKmr
         cVrTpZlBEQMu2IVo4WEMm9q5ycG2trislAj86YXqBUwz4E08bvQXVB4V6X+EHyV/wDOJ
         midg==
X-Gm-Message-State: AO0yUKVcN+exv8NWqOoxheLF7lMC/hx5NbfuklBzRcWR0S5Hc7T1oehH
        pFSpEVr71joir+Ke5uyqKN+MfRP8J91QpUEY2to=
X-Google-Smtp-Source: AK7set9TnctFi6bxE3cG3ITrVh+xkLUQ/v3uSSQiGjLvETyn1LH3ptjVRmExalqGLbFlxnLZypfYPw==
X-Received: by 2002:a17:907:6eab:b0:7c0:efb9:bc0e with SMTP id sh43-20020a1709076eab00b007c0efb9bc0emr33729042ejc.62.1678456169326;
        Fri, 10 Mar 2023 05:49:29 -0800 (PST)
Received: from krzk-bin.. ([2a02:810d:15c0:828:45c4:46be:ec71:4a51])
        by smtp.gmail.com with ESMTPSA id m27-20020a170906259b00b008e68d2c11d8sm966629ejb.218.2023.03.10.05.49.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Mar 2023 05:49:28 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: qcom: sm8550: add ADSP audio codec macros
Date:   Fri, 10 Mar 2023 14:49:25 +0100
Message-Id: <20230310134925.514125-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the Low Power Audio SubSystem (LPASS) / ADSP audio codec macros on
Qualcomm SM8550.  The nodes are very similar to SM8450, except missing
NPL clock which is not exposed on SM8550 and should not be touched.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Bindings and driver changes are here:
https://lore.kernel.org/linux-arm-msm/20230310132201.322148-1-krzysztof.kozlowski@linaro.org/T/#t
---
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 195 +++++++++++++++++++++++++++
 1 file changed, 195 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index 24aa724c12ea..fa5cd7c941e6 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -1994,6 +1994,97 @@ IPCC_MPROC_SIGNAL_GLINK_QMP
 			};
 		};
 
+		lpass_wsa2macro: codec@6aa0000 {
+			compatible = "qcom,sm8550-lpass-wsa-macro";
+			reg = <0 0x06aa0000 0 0x1000>;
+			clocks = <&q6prmcc LPASS_CLK_ID_WSA2_CORE_TX_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&q6prmcc LPASS_HW_MACRO_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&q6prmcc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&lpass_vamacro>;
+			clock-names = "mclk", "macro", "dcodec", "fsgen";
+			assigned-clocks = <&q6prmcc LPASS_CLK_ID_WSA2_CORE_TX_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
+			assigned-clock-rates = <19200000>;
+
+			#clock-cells = <0>;
+			clock-output-names = "wsa2-mclk";
+			pinctrl-names = "default";
+			pinctrl-0 = <&wsa2_swr_active>;
+			#sound-dai-cells = <1>;
+		};
+
+		lpass_rxmacro: codec@6ac0000 {
+			compatible = "qcom,sm8550-lpass-rx-macro";
+			reg = <0 0x06ac0000 0 0x1000>;
+			clocks = <&q6prmcc LPASS_CLK_ID_RX_CORE_TX_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&q6prmcc LPASS_HW_MACRO_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&q6prmcc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&lpass_vamacro>;
+			clock-names = "mclk", "macro", "dcodec", "fsgen";
+
+			assigned-clocks = <&q6prmcc LPASS_CLK_ID_RX_CORE_TX_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
+			assigned-clock-rates = <19200000>;
+
+			#clock-cells = <0>;
+			clock-output-names = "mclk";
+			pinctrl-names = "default";
+			pinctrl-0 = <&rx_swr_active>;
+			#sound-dai-cells = <1>;
+		};
+
+		lpass_txmacro: codec@6ae0000 {
+			compatible = "qcom,sm8550-lpass-tx-macro";
+			reg = <0 0x06ae0000 0 0x1000>;
+			clocks = <&q6prmcc LPASS_CLK_ID_TX_CORE_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&q6prmcc LPASS_HW_MACRO_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&q6prmcc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&lpass_vamacro>;
+			clock-names = "mclk", "macro", "dcodec", "fsgen";
+			assigned-clocks = <&q6prmcc LPASS_CLK_ID_TX_CORE_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
+
+			assigned-clock-rates = <19200000>;
+
+			#clock-cells = <0>;
+			clock-output-names = "mclk";
+			pinctrl-names = "default";
+			pinctrl-0 = <&tx_swr_active>;
+			#sound-dai-cells = <1>;
+		};
+
+		lpass_wsamacro: codec@6b00000 {
+			compatible = "qcom,sm8550-lpass-wsa-macro";
+			reg = <0 0x06b00000 0 0x1000>;
+			clocks = <&q6prmcc LPASS_CLK_ID_WSA_CORE_TX_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&q6prmcc LPASS_HW_MACRO_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&q6prmcc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&lpass_vamacro>;
+			clock-names = "mclk", "macro", "dcodec", "fsgen";
+
+			assigned-clocks = <&q6prmcc LPASS_CLK_ID_WSA_CORE_TX_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
+			assigned-clock-rates = <19200000>;
+
+			#clock-cells = <0>;
+			clock-output-names = "mclk";
+			pinctrl-names = "default";
+			pinctrl-0 = <&wsa_swr_active>;
+			#sound-dai-cells = <1>;
+		};
+
+		lpass_vamacro: codec@6d44000 {
+			compatible = "qcom,sm8550-lpass-va-macro";
+			reg = <0 0x06d44000 0 0x1000>;
+			clocks = <&q6prmcc LPASS_CLK_ID_TX_CORE_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&q6prmcc LPASS_HW_MACRO_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&q6prmcc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
+			clock-names = "mclk", "macro", "dcodec";
+
+			assigned-clocks = <&q6prmcc LPASS_CLK_ID_TX_CORE_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
+			assigned-clock-rates = <19200000>;
+
+			#clock-cells = <0>;
+			clock-output-names = "fsgen";
+			#sound-dai-cells = <1>;
+		};
+
 		lpass_tlmm: pinctrl@6e80000 {
 			compatible = "qcom,sm8550-lpass-lpi-pinctrl";
 			reg = <0 0x06e80000 0 0x20000>,
@@ -2005,6 +2096,110 @@ lpass_tlmm: pinctrl@6e80000 {
 			clocks = <&q6prmcc LPASS_HW_MACRO_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
 				 <&q6prmcc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
 			clock-names = "core", "audio";
+
+			tx_swr_active: tx-swr-active-state {
+				clk-pins {
+					pins = "gpio0";
+					function = "swr_tx_clk";
+					drive-strength = <2>;
+					slew-rate = <1>;
+					bias-disable;
+				};
+
+				data-pins {
+					pins = "gpio1", "gpio2", "gpio14";
+					function = "swr_tx_data";
+					drive-strength = <2>;
+					slew-rate = <1>;
+					bias-bus-hold;
+				};
+			};
+
+			rx_swr_active: rx-swr-active-state {
+				clk-pins {
+					pins = "gpio3";
+					function = "swr_rx_clk";
+					drive-strength = <2>;
+					slew-rate = <1>;
+					bias-disable;
+				};
+
+				data-pins {
+					pins = "gpio4", "gpio5";
+					function = "swr_rx_data";
+					drive-strength = <2>;
+					slew-rate = <1>;
+					bias-bus-hold;
+				};
+			};
+
+			dmic01_default: dmic01-default-state {
+				clk-pins {
+					pins = "gpio6";
+					function = "dmic1_clk";
+					drive-strength = <8>;
+					output-high;
+				};
+
+				data-pins {
+					pins = "gpio7";
+					function = "dmic1_data";
+					drive-strength = <8>;
+					input-enable;
+				};
+			};
+
+			dmic02_default: dmic02-default-state {
+				clk-pins {
+					pins = "gpio8";
+					function = "dmic2_clk";
+					drive-strength = <8>;
+					output-high;
+				};
+
+				data-pins {
+					pins = "gpio9";
+					function = "dmic2_data";
+					drive-strength = <8>;
+					input-enable;
+				};
+			};
+
+			wsa_swr_active: wsa-swr-active-state {
+				clk-pins {
+					pins = "gpio10";
+					function = "wsa_swr_clk";
+					drive-strength = <2>;
+					slew-rate = <1>;
+					bias-disable;
+				};
+
+				data-pins {
+					pins = "gpio11";
+					function = "wsa_swr_data";
+					drive-strength = <2>;
+					slew-rate = <1>;
+					bias-bus-hold;
+				};
+			};
+
+			wsa2_swr_active: wsa2-swr-active-state {
+				clk-pins {
+					pins = "gpio15";
+					function = "wsa2_swr_clk";
+					drive-strength = <2>;
+					slew-rate = <1>;
+					bias-disable;
+				};
+
+				data-pins {
+					pins = "gpio16";
+					function = "wsa2_swr_data";
+					drive-strength = <2>;
+					slew-rate = <1>;
+					bias-bus-hold;
+				};
+			};
 		};
 
 		lpass_lpiaon_noc: interconnect@7400000 {
-- 
2.34.1

