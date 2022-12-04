Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 62641641D0E
	for <lists+devicetree@lfdr.de>; Sun,  4 Dec 2022 13:45:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229995AbiLDMpY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 4 Dec 2022 07:45:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48576 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230053AbiLDMpU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 4 Dec 2022 07:45:20 -0500
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C755715FF6
        for <devicetree@vger.kernel.org>; Sun,  4 Dec 2022 04:45:18 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id cf42so8799225lfb.1
        for <devicetree@vger.kernel.org>; Sun, 04 Dec 2022 04:45:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PFy9vTAac847wVRK9IQYm8x6eKrDWpqbD0tWYA/+nv0=;
        b=JuZq2hK9lew2mNBFJZrkaTp/9AWDL3IVvVCyveG+WfoPdd6Ygc40dIDfv7Owu8sR70
         v/XfAKWUIQST5UiC1TCjZMTiGnp/fCYEjZ4TRciYeBfwbd1o4EL28MgygrsFk1KTuYIm
         PLxA6GRUenLaAA8A757g7wIy1bjs1hNHG8u80X/0u590z3I9o1BLC3gU5qeI1bsKY65d
         Gq4AfZgH3Klp16FRy2tkKHcuuBNGSOTu7wKpwH+tvQsk+k5l27hiias4vS0z70g0kXS9
         kVQnkJE1TAKx0vE0d6MA49EuDRo/oGYorv24Dqj96swLwX/Id8yIJOgQCCleLTX8mn+w
         5O3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PFy9vTAac847wVRK9IQYm8x6eKrDWpqbD0tWYA/+nv0=;
        b=o2Zg4StLUcC4NpzYXZSkrhFAPp9xt7ogm4SaWXULZTQHZ+WCF6iekJoNE+DVp+OhTa
         YMsGBfivYZS+4qoHepDrjcc0b9A9MhbycG3d6QfCIR1Wiqx6SFS5p2ULpmWhtj0U/Rc7
         Q8+f6kcYEctidd7N1TXqAOVtDCLhdBwK2ylQICt0z5eyeMQa8NEZFyQCcXPYgBlafp2S
         YDjoAH6tC+Kn7gS1GSvf4M+XQDgTDOdWAhMV+nlzC2zrU2gzqUamQ45ZWaL2orwlL6Q5
         CzyPSkherJuz3PVUsJg4EHW0asRd1SYPx6umFTdS1AQzJAPQZXh/uOL+8kJqO1QX7GvX
         ux9Q==
X-Gm-Message-State: ANoB5pneuNGa3O1JsWeyzUz7Mly8sCtgu7c2+Rj+8f0G/xXkRuRuo8S2
        2S+lknL6NBRBAvJDfuSsCaEQrQ==
X-Google-Smtp-Source: AA0mqf5T8F1flsHYHQL6cliKVuZe5pf8xXrCbYUg+z/GmyCCHfNQkEFqpjMFNXny4HWM/7Hsb8PCMg==
X-Received: by 2002:a05:6512:3e1e:b0:4b5:6042:d139 with SMTP id i30-20020a0565123e1e00b004b56042d139mr1949090lfv.357.1670157917154;
        Sun, 04 Dec 2022 04:45:17 -0800 (PST)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id k18-20020a05651239d200b0049771081b10sm1763006lfu.31.2022.12.04.04.45.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Dec 2022 04:45:16 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH v4 09/11] ARM: dts: qcom: msm8974: add second DSI host and PHY
Date:   Sun,  4 Dec 2022 14:45:06 +0200
Message-Id: <20221204124508.1415713-10-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221204124508.1415713-1-dmitry.baryshkov@linaro.org>
References: <20221204124508.1415713-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add second DSI host and PHY available on the msm8974 platform.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom-msm8974.dtsi | 77 +++++++++++++++++++++++++++++
 1 file changed, 77 insertions(+)

diff --git a/arch/arm/boot/dts/qcom-msm8974.dtsi b/arch/arm/boot/dts/qcom-msm8974.dtsi
index bdf1a4cca1c1..d3e3b34605f4 100644
--- a/arch/arm/boot/dts/qcom-msm8974.dtsi
+++ b/arch/arm/boot/dts/qcom-msm8974.dtsi
@@ -1575,6 +1575,13 @@ mdp5_intf1_out: endpoint {
 							remote-endpoint = <&dsi0_in>;
 						};
 					};
+
+					port@1 {
+						reg = <1>;
+						mdp5_intf2_out: endpoint {
+							remote-endpoint = <&dsi1_in>;
+						};
+					};
 				};
 			};
 
@@ -1647,6 +1654,76 @@ dsi0_phy: phy@fd922a00 {
 
 				status = "disabled";
 			};
+
+			dsi1: dsi@fd922e00 {
+				compatible = "qcom,mdss-dsi-ctrl";
+				reg = <0xfd922e00 0x1f8>;
+				reg-names = "dsi_ctrl";
+
+				interrupt-parent = <&mdss>;
+				interrupts = <4>;
+
+				assigned-clocks = <&mmcc BYTE1_CLK_SRC>, <&mmcc PCLK1_CLK_SRC>;
+				assigned-clock-parents = <&dsi1_phy 0>, <&dsi1_phy 1>;
+
+				clocks = <&mmcc MDSS_MDP_CLK>,
+					 <&mmcc MDSS_AHB_CLK>,
+					 <&mmcc MDSS_AXI_CLK>,
+					 <&mmcc MDSS_BYTE1_CLK>,
+					 <&mmcc MDSS_PCLK1_CLK>,
+					 <&mmcc MDSS_ESC1_CLK>,
+					 <&mmcc MMSS_MISC_AHB_CLK>;
+				clock-names = "mdp_core",
+					      "iface",
+					      "bus",
+					      "byte",
+					      "pixel",
+					      "core",
+					      "core_mmss";
+
+				phys = <&dsi1_phy>;
+
+				status = "disabled";
+
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+						dsi1_in: endpoint {
+							remote-endpoint = <&mdp5_intf2_out>;
+						};
+					};
+
+					port@1 {
+						reg = <1>;
+						dsi1_out: endpoint {
+						};
+					};
+				};
+			};
+
+			dsi1_phy: phy@fd923000 {
+				compatible = "qcom,dsi-phy-28nm-hpm";
+				reg = <0xfd923000 0xd4>,
+				      <0xfd923100 0x280>,
+				      <0xfd923380 0x30>;
+				reg-names = "dsi_pll",
+					    "dsi_phy",
+					    "dsi_phy_regulator";
+
+				#clock-cells = <1>;
+				#phy-cells = <0>;
+
+				clocks = <&mmcc MDSS_AHB_CLK>, <&xo_board>;
+				clock-names = "iface", "ref";
+
+				status = "disabled";
+			};
 		};
 
 		cci: cci@fda0c000 {
-- 
2.35.1

