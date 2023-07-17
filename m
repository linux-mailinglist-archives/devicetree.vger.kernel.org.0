Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8B432756085
	for <lists+devicetree@lfdr.de>; Mon, 17 Jul 2023 12:33:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230300AbjGQKdt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Jul 2023 06:33:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41320 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230228AbjGQKdd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Jul 2023 06:33:33 -0400
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E7601BC8
        for <devicetree@vger.kernel.org>; Mon, 17 Jul 2023 03:33:14 -0700 (PDT)
Received: by mail-pf1-x434.google.com with SMTP id d2e1a72fcca58-66872d4a141so2687693b3a.1
        for <devicetree@vger.kernel.org>; Mon, 17 Jul 2023 03:33:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689589987; x=1692181987;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Yr2lhl/TncZ/nmgXyyvgeCSOjpClIkhhe0GOfOLj29s=;
        b=SPWBNeopaNU3nELTMHts++zOvw/SEcmL1DiqjoGZPEIZjJ86A7udWgCAfjHtR57aOq
         RkTD8yG/uwBxmXKLLeDheFMRnIhrNmVEv50AJEfWyEXHNDt5LnNpDZFTQehkPREXei1b
         ylDgqExQtF3sJPXKs41jQz/rfJatp0b11KLJlYp3G7vCTQKkddpSkl6LGwKgOgDvFFYE
         Ht3nrXp9buuArG8aeDSuNP9Z3nzDk6ZIJeWS3zrQWH7YQPXcRB/Pqx9LoXDBz1Lonbo/
         s/UfNDwMHtQrOaVIABMiJFxGXYaDoFDu47ma36eDNNgLyeIaFy7vBL2au5mtBq3FTVst
         LscQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689589987; x=1692181987;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Yr2lhl/TncZ/nmgXyyvgeCSOjpClIkhhe0GOfOLj29s=;
        b=RJs9iwqnbFTv6oIaZtFrDBTot/ToaZ7i9oM1OUocQ4MJmNJCkIo+aTkmSanmM6mWA9
         oR2oF0MJaMF5m3SxhaNRq27H0ZZ+iz0Z3i70436ySUOD2r/PErDNGW7uW8XB612ABCqt
         VUgANJnvCT7PWgEz03hCzFNAwPV5hSGkTJdrCW/EhUgGHtp4mjOmsNSbMZT92fRD7s/z
         hE5Mw7gRl0Cp6R8Vt+AMtcqaNvMqkrsJw+yOYvE7t+yFuUTlOGSU8g1sExp0G0EXigzE
         bkkbqXEAj/XvvOBuXWtdgTjBXQE/st71Xq93XOhQ5+nhSMt+qgmGlmm5GlifWzn7X6NV
         r0Lg==
X-Gm-Message-State: ABy/qLa0W9zp28CpwAnz7t51zoyyztG50Lghasfk2sOkdXoRrRA7R/+4
        TaC1msmlfR6qamU8Ie+oEClZ8w==
X-Google-Smtp-Source: APBJJlFcTSvu7b52GUZ3skTVKlJd6itPmcIPP6ywn40LUPGaF3qiBa95JEqP4Y+cXYceKo+YR96ddA==
X-Received: by 2002:a05:6a20:a109:b0:133:6d89:4d29 with SMTP id q9-20020a056a20a10900b001336d894d29mr12601888pzk.58.1689589987309;
        Mon, 17 Jul 2023 03:33:07 -0700 (PDT)
Received: from localhost.localdomain ([223.233.68.54])
        by smtp.gmail.com with ESMTPSA id ij9-20020a170902ab4900b001b9de67285dsm12633616plb.156.2023.07.17.03.33.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jul 2023 03:33:07 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-usb@vger.kernel.org
Cc:     agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        linux-kernel@vger.kernel.org, bhupesh.linux@gmail.com,
        bhupesh.sharma@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, krzysztof.kozlowski@linaro.org,
        quic_schowdhu@quicinc.com, gregkh@linuxfoundation.org
Subject: [PATCH v8 3/4] arm64: dts: qcom: sm6115: Add EUD dt node and dwc3 connector
Date:   Mon, 17 Jul 2023 16:02:35 +0530
Message-Id: <20230717103236.1246771-4-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230717103236.1246771-1-bhupesh.sharma@linaro.org>
References: <20230717103236.1246771-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the Embedded USB Debugger(EUD) device tree node for
SM6115 / SM4250 SoC.

The node contains EUD base register region, EUD mode manager
register region and TCSR Base register region along with the
interrupt entry.

Also add the typec connector node for EUD which is attached to
EUD node via port. EUD is also attached to DWC3 node via port.

To enable the role switch, we need to set dr_mode = "otg" property
for 'usb_dwc3' sub-node in the board dts file.

Also the EUD device can be enabled on a board once linux is boot'ed
by setting:
 $ echo 1 > /sys/bus/platform/drivers/qcom_eud/../enable

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6115.dtsi | 50 ++++++++++++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
index 839c603512403..db45337c1082c 100644
--- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
@@ -260,6 +260,18 @@ CLUSTER_1_SLEEP_1: cluster-sleep-1-1 {
 		};
 	};
 
+	eud_typec: connector {
+		compatible = "usb-c-connector";
+
+		ports {
+			port@0 {
+				con_eud: endpoint {
+					remote-endpoint = <&eud_con>;
+				};
+			};
+		};
+	};
+
 	firmware {
 		scm: scm {
 			compatible = "qcom,scm-sm6115", "qcom,scm";
@@ -789,6 +801,37 @@ gcc: clock-controller@1400000 {
 			#power-domain-cells = <1>;
 		};
 
+		eud: eud@1610000 {
+			compatible = "qcom,sm6115-eud", "qcom,eud";
+			reg = <0x0 0x01610000 0x0 0x2000>,
+			      <0x0 0x01612000 0x0 0x1000>,
+			      <0x0 0x003c0000 0x0 0x40000>;
+			reg-names = "eud-base", "eud-mode-mgr", "tcsr-base";
+			interrupts = <GIC_SPI 189 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					eud_ep: endpoint {
+						remote-endpoint = <&usb2_role_switch>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					eud_con: endpoint {
+						remote-endpoint = <&con_eud>;
+					};
+				};
+			};
+		};
+
 		usb_hsphy: phy@1613000 {
 			compatible = "qcom,sm6115-qusb2-phy";
 			reg = <0x0 0x01613000 0x0 0x180>;
@@ -1322,6 +1365,13 @@ usb_dwc3: usb@4e00000 {
 				snps,has-lpm-erratum;
 				snps,hird-threshold = /bits/ 8 <0x10>;
 				snps,usb3_lpm_capable;
+				usb-role-switch;
+
+				port {
+					usb2_role_switch: endpoint {
+						remote-endpoint = <&eud_ep>;
+					};
+				};
 			};
 		};
 
-- 
2.38.1

