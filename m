Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CBB90612B73
	for <lists+devicetree@lfdr.de>; Sun, 30 Oct 2022 16:55:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229782AbiJ3Pzg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 30 Oct 2022 11:55:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46802 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229744AbiJ3Pzf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 30 Oct 2022 11:55:35 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D632AB498
        for <devicetree@vger.kernel.org>; Sun, 30 Oct 2022 08:55:33 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id j16so15789999lfe.12
        for <devicetree@vger.kernel.org>; Sun, 30 Oct 2022 08:55:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NC4NbrJQrlp+s9gq+Fh3KaFB46BBGQ7TqKVwoCXoIhU=;
        b=DRhmLIFUgpMsmgPLCDY0duqB5FPcRP6xZcLQMkPSLH1ySeRm9qRyfAhNHpflwFBspO
         cLeztejZ6FJmKyWTAGtU1vhp9Vws8vzkXqKv3l7fSOM0VSpDwWqQIzsL4/aOBCteyFDu
         RHs/mLmqb73Rx3xMHtxoKEAvqqraD6+bBMNnjvVgILrRLPI7xUsHcMPZkSNvSd3YvxcD
         caZPLahy3yuEYhZTA+RerIufnErbT4TZGWbgk4T5Z/r8Hr/W7kfTtU96zjLWzrfGBlWL
         duwUMPiaXIe+azovifZpq7ntNYYbBQcKpuWvDUJFa/iP+VeHwdQF/Av+QI6igwk08GYv
         x2fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NC4NbrJQrlp+s9gq+Fh3KaFB46BBGQ7TqKVwoCXoIhU=;
        b=e6FNWXGLRpjQW91nSBZRcCi1IYj4hItI5XXqU0qPCI3z+AaF1esOImwqI2PPXDdRPv
         2FZvLUD/PGlhf5DRlmxbuz8ZwfyzMfNbc9T/Odxe/rUQPzEFBVuEZO3T7PakWtGDMgzo
         oPWtXcIN6nfzRcYbjwDZb3i3am6gocJ4+fs2RlPbpmoaL4+GKYJgm2EMgWNjis9pGdv4
         1KDG37535e1a/0rS+gAb0k3BXi5Cny8rzwjatp1mT67zic3QPJ7s25//nepAO5Ydd19R
         A+ihiLuIEzYKEp1d/rXvTCdaiQDZ2uuUSpFOF+Tr88eP5jICV+2ZY7VQh4C8ZV1V+OaF
         wJPg==
X-Gm-Message-State: ACrzQf04UOrDAkhEi0Ex7aFKyuDpM3cMrY5y1XArOMWTiW+Ww8Plv7JV
        KdWNAoBOwsbKPnbn0TgtbilWzg==
X-Google-Smtp-Source: AMsMyM5WrV3XyBbV+5LiJsrycjC0/VXQ/7C+b7RTaJnFfiX5W1WIzPZaL8RFV4rpY32VLRV+PtsQBw==
X-Received: by 2002:a05:6512:139c:b0:4aa:b25c:51f5 with SMTP id p28-20020a056512139c00b004aab25c51f5mr3423585lfa.120.1667145332058;
        Sun, 30 Oct 2022 08:55:32 -0700 (PDT)
Received: from localhost.localdomain ([195.165.23.90])
        by smtp.gmail.com with ESMTPSA id f4-20020ac24e44000000b00497a1f92a72sm842982lfr.221.2022.10.30.08.55.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Oct 2022 08:55:31 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH v3 09/11] ARM: dts: qcom: msm8974: add second DSI host and PHY
Date:   Sun, 30 Oct 2022 18:55:18 +0300
Message-Id: <20221030155520.91629-10-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221030155520.91629-1-dmitry.baryshkov@linaro.org>
References: <20221030155520.91629-1-dmitry.baryshkov@linaro.org>
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
index 7647cf9f2f76..7f8b4356ccdb 100644
--- a/arch/arm/boot/dts/qcom-msm8974.dtsi
+++ b/arch/arm/boot/dts/qcom-msm8974.dtsi
@@ -1542,6 +1542,13 @@ mdp5_intf1_out: endpoint {
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
 
@@ -1614,6 +1621,76 @@ dsi0_phy: phy@fd922a00 {
 
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
 
 		gpu: adreno@fdb00000 {
-- 
2.35.1

