Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E7AD67836DD
	for <lists+devicetree@lfdr.de>; Tue, 22 Aug 2023 02:14:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231919AbjHVAOe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Aug 2023 20:14:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55546 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231909AbjHVAOc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Aug 2023 20:14:32 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B650CF2
        for <devicetree@vger.kernel.org>; Mon, 21 Aug 2023 17:14:14 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-4fe457ec6e7so5793812e87.3
        for <devicetree@vger.kernel.org>; Mon, 21 Aug 2023 17:14:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692663252; x=1693268052;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UJKI/b5GmXIv44nH7V+kZYi4GBieCKQf+foqUta3LRQ=;
        b=jfgaqHeHiHOGVZFL4zVvk3VoV67Vdgvb0yyHDDWWZSfA82GiJaJYbObiD6hT4ducDu
         vyqne8hHonXO82M7zwA/MsYCujPDaZGxJHBJAcrzEfcQMEYaIXGnefzN06L/fHVSrsFA
         uXzIPLAVj4DMxE12SJ1kX15z+V0ir05zo8JOcv7aoPBjdWaumrAm/smjBm2SbnD0iMRj
         mZQyR2iPa1D+ejhfQIigUId6cXWziYSeSR8+YtRZXV0hN4AF31c2vXj6dXFoSr/SgRep
         Yxz8iZBMqTojaPYgRgf/t+GGvAjiUiiHs2CJqT1qQbzSET3NvBBvd0KsSjbBAEKBURp8
         By0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692663252; x=1693268052;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UJKI/b5GmXIv44nH7V+kZYi4GBieCKQf+foqUta3LRQ=;
        b=gxCz0iHDMTjEJ6PZIKqd/vn4YIDgLpbBs+DELexs+LTM+7Twh4uybX/f2zx3gya44i
         smO8ZwdY4kfOGYELnRHXXXgljf4OfAv/NbiLms8iT0fl04XhbzF0t/3wGEYXAfc4MJsC
         R7sOhTh1fKocrfpBdJHqkSmuIfwLzTvsr9i0e7MwLKwUCSo987wwF5WObZwMtOlbTIfy
         ZsSNTnh6KmsjzOrqpIv2v2F9Q9FiNRWyYGlvFNun9hPOjVgHQn5eUruHFWR2d3gWHr1s
         8J6Vm5PvkZY0ie7nPn5InAQ6Cpds7mL8ehNorlhUUEMgbk7EMkmF2Ng2z/JmpjaCj3iO
         8koA==
X-Gm-Message-State: AOJu0YzPrUVT0PyL/vfpb6ZMPslPKwdH1g0wIVk+RWrKs2LZTIydZSXI
        ofaZWXPiMvoeoI3sudaRRhgO8Q==
X-Google-Smtp-Source: AGHT+IHTwQyplQGeIUywxJdxejyS2NH5hGGo/R1lyHlQ/l5c0DoY7FejZPi/9dWLke7X90z1vOKztA==
X-Received: by 2002:a05:6512:104f:b0:4f8:7551:7485 with SMTP id c15-20020a056512104f00b004f875517485mr6281378lfb.5.1692663252524;
        Mon, 21 Aug 2023 17:14:12 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id er23-20020a05651248d700b004fe36e673b8sm912024lfb.178.2023.08.21.17.14.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Aug 2023 17:14:12 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-input@vger.kernel.org
Subject: [PATCH v3 27/32] ARM: dts: qcom: mdm9615: move RPM regulators to board files
Date:   Tue, 22 Aug 2023 03:13:44 +0300
Message-Id: <20230822001349.899298-28-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230822001349.899298-1-dmitry.baryshkov@linaro.org>
References: <20230822001349.899298-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The set of regulators available over the RPM requests is not a property
of the SoC. Move them to board files.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../boot/dts/qcom/qcom-mdm9615-wp8548.dtsi    | 136 ++++++++++++++++++
 arch/arm/boot/dts/qcom/qcom-mdm9615.dtsi      | 134 -----------------
 2 files changed, 136 insertions(+), 134 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-mdm9615-wp8548.dtsi b/arch/arm/boot/dts/qcom/qcom-mdm9615-wp8548.dtsi
index cc264861afe5..1e1c66c7f9d2 100644
--- a/arch/arm/boot/dts/qcom/qcom-mdm9615-wp8548.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-mdm9615-wp8548.dtsi
@@ -130,6 +130,142 @@ &gsbi5_serial {
 	pinctrl-names = "default";
 };
 
+&rpm {
+	regulators {
+		compatible = "qcom,rpm-pm8018-regulators";
+
+		vin_lvs1-supply = <&pm8018_s3>;
+
+		vdd_l7-supply = <&pm8018_s4>;
+		vdd_l8-supply = <&pm8018_s3>;
+		vdd_l9_l10_l11_l12-supply = <&pm8018_s5>;
+
+		/* Buck SMPS */
+		pm8018_s1: s1 {
+			regulator-min-microvolt = <500000>;
+			regulator-max-microvolt = <1150000>;
+			qcom,switch-mode-frequency = <1600000>;
+			bias-pull-down;
+		};
+
+		pm8018_s2: s2 {
+			regulator-min-microvolt = <1225000>;
+			regulator-max-microvolt = <1300000>;
+			qcom,switch-mode-frequency = <1600000>;
+			bias-pull-down;
+		};
+
+		pm8018_s3: s3 {
+			regulator-always-on;
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1800000>;
+			qcom,switch-mode-frequency = <1600000>;
+			bias-pull-down;
+		};
+
+		pm8018_s4: s4 {
+			regulator-min-microvolt = <2100000>;
+			regulator-max-microvolt = <2200000>;
+			qcom,switch-mode-frequency = <1600000>;
+			bias-pull-down;
+		};
+
+		pm8018_s5: s5 {
+			regulator-always-on;
+			regulator-min-microvolt = <1350000>;
+			regulator-max-microvolt = <1350000>;
+			qcom,switch-mode-frequency = <1600000>;
+			bias-pull-down;
+		};
+
+		/* PMOS LDO */
+		pm8018_l2: l2 {
+			regulator-always-on;
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1800000>;
+			bias-pull-down;
+		};
+
+		pm8018_l3: l3 {
+			regulator-always-on;
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1800000>;
+			bias-pull-down;
+		};
+
+		pm8018_l4: l4 {
+			regulator-min-microvolt = <3300000>;
+			regulator-max-microvolt = <3300000>;
+			bias-pull-down;
+		};
+
+		pm8018_l5: l5 {
+			regulator-min-microvolt = <2850000>;
+			regulator-max-microvolt = <2850000>;
+			bias-pull-down;
+		};
+
+		pm8018_l6: l6 {
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <2850000>;
+			bias-pull-down;
+		};
+
+		pm8018_l7: l7 {
+			regulator-min-microvolt = <1850000>;
+			regulator-max-microvolt = <1900000>;
+			bias-pull-down;
+		};
+
+		pm8018_l8: l8 {
+			regulator-min-microvolt = <1200000>;
+			regulator-max-microvolt = <1200000>;
+			bias-pull-down;
+		};
+
+		pm8018_l9: l9 {
+			regulator-min-microvolt = <750000>;
+			regulator-max-microvolt = <1150000>;
+			bias-pull-down;
+		};
+
+		pm8018_l10: l10 {
+			regulator-min-microvolt = <1050000>;
+			regulator-max-microvolt = <1050000>;
+			bias-pull-down;
+		};
+
+		pm8018_l11: l11 {
+			regulator-min-microvolt = <1050000>;
+			regulator-max-microvolt = <1050000>;
+			bias-pull-down;
+		};
+
+		pm8018_l12: l12 {
+			regulator-min-microvolt = <1050000>;
+			regulator-max-microvolt = <1050000>;
+			bias-pull-down;
+		};
+
+		pm8018_l13: l13 {
+			regulator-min-microvolt = <1850000>;
+			regulator-max-microvolt = <2950000>;
+			bias-pull-down;
+		};
+
+		pm8018_l14: l14 {
+			regulator-min-microvolt = <2850000>;
+			regulator-max-microvolt = <2850000>;
+			bias-pull-down;
+		};
+
+		/* Low Voltage Switch */
+		pm8018_lvs1: lvs1 {
+			bias-pull-down;
+		};
+	};
+};
+
 &sdcc1 {
 	status = "okay";
 };
diff --git a/arch/arm/boot/dts/qcom/qcom-mdm9615.dtsi b/arch/arm/boot/dts/qcom/qcom-mdm9615.dtsi
index 11e5ab2708d7..c3325bc38d1f 100644
--- a/arch/arm/boot/dts/qcom/qcom-mdm9615.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-mdm9615.dtsi
@@ -342,140 +342,6 @@ rpm: rpm@108000 {
 				     <GIC_SPI 21 IRQ_TYPE_EDGE_RISING>,
 				     <GIC_SPI 22 IRQ_TYPE_EDGE_RISING>;
 			interrupt-names = "ack", "err", "wakeup";
-
-			regulators {
-				compatible = "qcom,rpm-pm8018-regulators";
-
-				vin_lvs1-supply = <&pm8018_s3>;
-
-				vdd_l7-supply = <&pm8018_s4>;
-				vdd_l8-supply = <&pm8018_s3>;
-				vdd_l9_l10_l11_l12-supply = <&pm8018_s5>;
-
-				/* Buck SMPS */
-				pm8018_s1: s1 {
-					regulator-min-microvolt = <500000>;
-					regulator-max-microvolt = <1150000>;
-					qcom,switch-mode-frequency = <1600000>;
-					bias-pull-down;
-				};
-
-				pm8018_s2: s2 {
-					regulator-min-microvolt = <1225000>;
-					regulator-max-microvolt = <1300000>;
-					qcom,switch-mode-frequency = <1600000>;
-					bias-pull-down;
-				};
-
-				pm8018_s3: s3 {
-					regulator-always-on;
-					regulator-min-microvolt = <1800000>;
-					regulator-max-microvolt = <1800000>;
-					qcom,switch-mode-frequency = <1600000>;
-					bias-pull-down;
-				};
-
-				pm8018_s4: s4 {
-					regulator-min-microvolt = <2100000>;
-					regulator-max-microvolt = <2200000>;
-					qcom,switch-mode-frequency = <1600000>;
-					bias-pull-down;
-				};
-
-				pm8018_s5: s5 {
-					regulator-always-on;
-					regulator-min-microvolt = <1350000>;
-					regulator-max-microvolt = <1350000>;
-					qcom,switch-mode-frequency = <1600000>;
-					bias-pull-down;
-				};
-
-				/* PMOS LDO */
-				pm8018_l2: l2 {
-					regulator-always-on;
-					regulator-min-microvolt = <1800000>;
-					regulator-max-microvolt = <1800000>;
-					bias-pull-down;
-				};
-
-				pm8018_l3: l3 {
-					regulator-always-on;
-					regulator-min-microvolt = <1800000>;
-					regulator-max-microvolt = <1800000>;
-					bias-pull-down;
-				};
-
-				pm8018_l4: l4 {
-					regulator-min-microvolt = <3300000>;
-					regulator-max-microvolt = <3300000>;
-					bias-pull-down;
-				};
-
-				pm8018_l5: l5 {
-					regulator-min-microvolt = <2850000>;
-					regulator-max-microvolt = <2850000>;
-					bias-pull-down;
-				};
-
-				pm8018_l6: l6 {
-					regulator-min-microvolt = <1800000>;
-					regulator-max-microvolt = <2850000>;
-					bias-pull-down;
-				};
-
-				pm8018_l7: l7 {
-					regulator-min-microvolt = <1850000>;
-					regulator-max-microvolt = <1900000>;
-					bias-pull-down;
-				};
-
-				pm8018_l8: l8 {
-					regulator-min-microvolt = <1200000>;
-					regulator-max-microvolt = <1200000>;
-					bias-pull-down;
-				};
-
-				pm8018_l9: l9 {
-					regulator-min-microvolt = <750000>;
-					regulator-max-microvolt = <1150000>;
-					bias-pull-down;
-				};
-
-				pm8018_l10: l10 {
-					regulator-min-microvolt = <1050000>;
-					regulator-max-microvolt = <1050000>;
-					bias-pull-down;
-				};
-
-				pm8018_l11: l11 {
-					regulator-min-microvolt = <1050000>;
-					regulator-max-microvolt = <1050000>;
-					bias-pull-down;
-				};
-
-				pm8018_l12: l12 {
-					regulator-min-microvolt = <1050000>;
-					regulator-max-microvolt = <1050000>;
-					bias-pull-down;
-				};
-
-				pm8018_l13: l13 {
-					regulator-min-microvolt = <1850000>;
-					regulator-max-microvolt = <2950000>;
-					bias-pull-down;
-				};
-
-				pm8018_l14: l14 {
-					regulator-min-microvolt = <2850000>;
-					regulator-max-microvolt = <2850000>;
-					bias-pull-down;
-				};
-
-				/* Low Voltage Switch */
-				pm8018_lvs1: lvs1 {
-					bias-pull-down;
-				};
-			};
 		};
 	};
 };
-- 
2.39.2

