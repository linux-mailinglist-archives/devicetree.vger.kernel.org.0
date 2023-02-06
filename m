Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4D33568C0F7
	for <lists+devicetree@lfdr.de>; Mon,  6 Feb 2023 16:07:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229490AbjBFPHx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Feb 2023 10:07:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47612 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230283AbjBFPHw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Feb 2023 10:07:52 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 989004EC9
        for <devicetree@vger.kernel.org>; Mon,  6 Feb 2023 07:07:50 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id z13so1423234wmp.2
        for <devicetree@vger.kernel.org>; Mon, 06 Feb 2023 07:07:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9BeWy7MExlvQJQWwtcxtXWpzzG9fVvevuvZAQJIXNVs=;
        b=eI7rdFQX0Y6qeNx+TtElR4iZbwE+vLNnzZmQXZIZC0I/6TkTKbBZmNaetU3RXQGKp1
         ba2Dor/gBbvV+jm3jXKo3HwuzOyn1glyGHVOa2778wEnhisnMLeouENNfDYcAhGWsiYf
         RNhZLFJuttBKarWEoGPKbQV3V61LmjkeSBNm+BOpDu483RjYFB3rFvc8GzbbEqHeImkO
         s088R+Jh/GgmZtVY1mw8W4aHtAF2G5lsj0Aij4+2hmHwMOmdqEtIRokKAFddXRNT8bqr
         vJKm8dTh3BUzkq3bra2geke1W0UGRVFjs07/le/1vTUoge34VN6grNAIMwEwxz2L6vX2
         h0rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9BeWy7MExlvQJQWwtcxtXWpzzG9fVvevuvZAQJIXNVs=;
        b=FaMsgKUpy7MDL2TKfM9aIbuRx3a4XnoqSURBbQW2EnwgaY5wXARW1C4/tPH59NdZu+
         3ynzw4XKYiD/WD8pw7/WKKXbuHDahh6bkAz0msHX9fxWdhiD4ZRkgCDP2EoLR1e8FHXr
         lIxXoxKdPgEil5/npw9ILuZdM5IV7CjZBMMAE8PSKUjANvi2PNLLQp+pt32FdzmOBhHV
         6u3zbVJwb7MRDnlTWhGFDzgdBIw8ZljD1MwrVmotOvhhibrTIQLitFao3O4bYqdOZ1JM
         zha5MiEavcwsHGFqBUCOhO1gHE46XHe7ZmMQmcALh5g08p1BM4vENyUbw2ImhtnpDeON
         9/TA==
X-Gm-Message-State: AO0yUKUWkLGximjaLgGRzer6QN9rDpnC4it2nOYHCghfWpcpS8kFsYXb
        kMdw7SaE48UVIduH9bKCRdhJWw==
X-Google-Smtp-Source: AK7set/GnGaHeWHS2A9PNRzM4jxFcnBdslHPdnjcTsbUSuX5eAo9Uby50dxoo5cOGLoSDx1bWoVb3Q==
X-Received: by 2002:a05:600c:5389:b0:3df:9858:c038 with SMTP id hg9-20020a05600c538900b003df9858c038mr11376789wmb.13.1675696069169;
        Mon, 06 Feb 2023 07:07:49 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id s15-20020a05600c45cf00b003e00c453447sm818858wmo.48.2023.02.06.07.07.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Feb 2023 07:07:48 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: qcom: sm8550: add GPR and LPASS pin controller
Date:   Mon,  6 Feb 2023 16:07:44 +0100
Message-Id: <20230206150744.513967-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the ADSP GPR (Generic Packet Router) and LPASS LPI (Low Power Audio
SubSystem Low Power Island) pin controller nodes used as part of audio
subsystem on SM8550.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

LPI bindings:
https://lore.kernel.org/linux-arm-msm/20230203174645.597053-1-krzysztof.kozlowski@linaro.org/T/#t

IOMMUS on qcom,q6apm-dais:
https://lore.kernel.org/linux-arm-msm/20230206150532.513468-1-krzysztof.kozlowski@linaro.org/T/#u
---
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 55 ++++++++++++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index 6ff135191ee0..c26892bddcf0 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -13,7 +13,9 @@
 #include <dt-bindings/interconnect/qcom,sm8550-rpmh.h>
 #include <dt-bindings/mailbox/qcom-ipcc.h>
 #include <dt-bindings/power/qcom-rpmpd.h>
+#include <dt-bindings/soc/qcom,gpr.h>
 #include <dt-bindings/soc/qcom,rpmh-rsc.h>
+#include <dt-bindings/sound/qcom,q6dsp-lpass-ports.h>
 #include <dt-bindings/phy/phy-qcom-qmp.h>
 #include <dt-bindings/thermal/thermal.h>
 
@@ -1996,6 +1998,19 @@ IPCC_MPROC_SIGNAL_GLINK_QMP
 			};
 		};
 
+		lpass_tlmm: pinctrl@6e80000 {
+			compatible = "qcom,sm8550-lpass-lpi-pinctrl";
+			reg = <0 0x06e80000 0 0x20000>,
+			      <0 0x0725a000 0 0x10000>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			gpio-ranges = <&lpass_tlmm 0 0 23>;
+
+			clocks = <&q6prmcc LPASS_HW_MACRO_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&q6prmcc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
+			clock-names = "core", "audio";
+		};
+
 		lpass_lpiaon_noc: interconnect@7400000 {
 			compatible = "qcom,sm8550-lpass-lpiaon-noc";
 			reg = <0 0x07400000 0 0x19080>;
@@ -3513,6 +3528,46 @@ compute-cb@7 {
 							 <&apps_smmu 0x1067 0x0>;
 					};
 				};
+
+				gpr {
+					compatible = "qcom,gpr";
+					qcom,glink-channels = "adsp_apps";
+					qcom,domain = <GPR_DOMAIN_ID_ADSP>;
+					qcom,intents = <512 20>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					q6apm: service@1 {
+						compatible = "qcom,q6apm";
+						reg = <GPR_APM_MODULE_IID>;
+						#sound-dai-cells = <0>;
+						qcom,protection-domain = "avs/audio",
+									 "msm/adsp/audio_pd";
+
+						q6apmdai: dais {
+							compatible = "qcom,q6apm-dais";
+							iommus = <&apps_smmu 0x1001 0x0080>,
+								 <&apps_smmu 0x1061 0x0>;
+						};
+
+						q6apmbedai: bedais {
+							compatible = "qcom,q6apm-lpass-dais";
+							#sound-dai-cells = <1>;
+						};
+					};
+
+					q6prm: service@2 {
+						compatible = "qcom,q6prm";
+						reg = <GPR_PRM_MODULE_IID>;
+						qcom,protection-domain = "avs/audio",
+									 "msm/adsp/audio_pd";
+
+						q6prmcc: clock-controller {
+							compatible = "qcom,q6prm-lpass-clocks";
+							#clock-cells = <2>;
+						};
+					};
+				};
 			};
 		};
 
-- 
2.34.1

