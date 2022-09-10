Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1E06C5B4661
	for <lists+devicetree@lfdr.de>; Sat, 10 Sep 2022 14:47:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229712AbiIJMrS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 10 Sep 2022 08:47:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38556 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229661AbiIJMrO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 10 Sep 2022 08:47:14 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB029578BC
        for <devicetree@vger.kernel.org>; Sat, 10 Sep 2022 05:47:11 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id s10so4525816ljp.5
        for <devicetree@vger.kernel.org>; Sat, 10 Sep 2022 05:47:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=n0bXydgizu30wUsJI2KwERAS71n7PXXqEv6Go7f1kzs=;
        b=tNL9rse1+IZD8i9oPPnekm9PsyU30dJi345XUBSTI/ZzJd/mg/5fIZny6rpRyUdkBL
         9GPYn+US4X8sWp1j22HdKoaGOCKftqrmdG+e+2MOf02JByWhjs57+mHClTliZ9p8ZZZo
         Quk/xR/PXJJx1eUFJRjaHXtON0GnroIJA1qNnNCLfAY7Mdu8con6XaiDoKJor81g+wPi
         Z8O8e55Fkphbk8xrKJd8LGTjXg7jSPZZvebWHNfAcpyVZNlXU6RVAJfvisti4brLKIlo
         oecclwnXzSgvT8xHHYJFRxjB5b0oRVxqTOcfRA+cRxJbvE6kKBSXy7cgaq0RKKXqx59r
         duFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=n0bXydgizu30wUsJI2KwERAS71n7PXXqEv6Go7f1kzs=;
        b=0cds9d2LWvpmGxxfRWLKtgMNb1nVRPNV+rBWkR2NnpiwP3N2D8idlLoPW3a/CA5oTb
         Lv9yRcXViiMCX4pzvWmXb3qni/jRHdgBvhSn5/GR+XjkID2g+1gnGkTmVlGBWYn4CbbQ
         RRwQPVCH0U1CoTNEKLUbywCSrFVuXX0oViNyYgqS/mZHxUY8mvU+KRNdmdM/Y+X4JQJX
         lmfHfGxGFmxI8CVwx+El1e0n7EexgoiwaOAwWf3G5iCSC/+Js6oyVXF0RXoFdDv1bi2U
         Mh+mL6qMImZ6FNP+dyloMwCY88WDU1lPkh2haaDDuJ3RB0vN9lhEd5DmqPO7UweyJaEm
         TZ8g==
X-Gm-Message-State: ACgBeo379wmvrOSb3EqrA9AMFwQJYW0VeTUVYEm2NLF6lc2KVXiW7DHa
        WgLTPxtC27Ec42Om3+3IZk1CGA==
X-Google-Smtp-Source: AA6agR4d3fx25Ftu6ymwPyIkQ59Q/mfRQNPk2AyF0aky17Z0p+BT9VrHaJ5VIDc8suu8tiQ3y1jwgQ==
X-Received: by 2002:a05:651c:101:b0:250:896d:f870 with SMTP id a1-20020a05651c010100b00250896df870mr5678779ljb.235.1662814030749;
        Sat, 10 Sep 2022 05:47:10 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id k14-20020a2e920e000000b002677a3ad1d9sm327463ljg.76.2022.09.10.05.47.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Sep 2022 05:47:10 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Amit Kucheria <amitk@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Zhang Rui <rui.zhang@intel.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [RFC PATCH 10/10] arm64: dts: qcom: qcs404: specify per-sensor calibration cells
Date:   Sat, 10 Sep 2022 15:47:01 +0300
Message-Id: <20220910124701.4060321-11-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220910124701.4060321-1-dmitry.baryshkov@linaro.org>
References: <20220910124701.4060321-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Specify pre-parsed per-sensor calibration nvmem cells in the tsens
device node rather than parsing the whole data blob in the driver.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/qcs404.dtsi | 120 ++++++++++++++++++++++++++-
 1 file changed, 117 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qcs404.dtsi b/arch/arm64/boot/dts/qcom/qcs404.dtsi
index 9ab990061522..bcbbd5ede2a1 100644
--- a/arch/arm64/boot/dts/qcom/qcs404.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs404.dtsi
@@ -370,13 +370,105 @@ qfprom: qfprom@a4000 {
 			reg = <0x000a4000 0x1000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
-			tsens_caldata: caldata@d0 {
+			tsens_caldata: caldata@1f8 {
 				reg = <0x1f8 0x14>;
 			};
 			cpr_efuse_speedbin: speedbin@13c {
 				reg = <0x13c 0x4>;
 				bits = <2 3>;
 			};
+			tsens_s0_p1: s0_p1@1f8 {
+				reg = <0x1f8 0x1>;
+				bits = <0 6>;
+			};
+			tsens_s0_p2: s0_p2@1f8 {
+				reg = <0x1f8 0x2>;
+				bits = <6 6>;
+			};
+			tsens_s1_p1: s1_p1@1f9 {
+				reg = <0x1f9 0x2>;
+				bits = <4 6>;
+			};
+			tsens_s1_p2: s1_p2@1fa {
+				reg = <0x1fa 0x1>;
+				bits = <2 6>;
+			};
+			tsens_s2_p1: s2_p1@1fb {
+				reg = <0x1fb 0x1>;
+				bits = <0 6>;
+			};
+			tsens_s2_p2: s2_p2@1fb {
+				reg = <0x1fb 0x2>;
+				bits = <6 6>;
+			};
+			tsens_s3_p1: s3_p1@1fc {
+				reg = <0x1fc 0x2>;
+				bits = <4 6>;
+			};
+			tsens_s3_p2: s3_p2@1fd {
+				reg = <0x1fd 0x1>;
+				bits = <2 6>;
+			};
+			tsens_s4_p1: s4_p1@1fe {
+				reg = <0x1fe 0x1>;
+				bits = <0 6>;
+			};
+			tsens_s4_p2: s4_p2@1fe {
+				reg = <0x1fe 0x2>;
+				bits = <6 6>;
+			};
+			tsens_s5_p1: s5_p1@200 {
+				reg = <0x200 0x1>;
+				bits = <0 6>;
+			};
+			tsens_s5_p2: s5_p2@200 {
+				reg = <0x200 0x2>;
+				bits = <6 6>;
+			};
+			tsens_s6_p1: s6_p1@201 {
+				reg = <0x201 0x2>;
+				bits = <4 6>;
+			};
+			tsens_s6_p2: s6_p2@202 {
+				reg = <0x202 0x1>;
+				bits = <2 6>;
+			};
+			tsens_s7_p1: s7_p1@203 {
+				reg = <0x203 0x1>;
+				bits = <0 6>;
+			};
+			tsens_s7_p2: s7_p2@203 {
+				reg = <0x203 0x2>;
+				bits = <6 6>;
+			};
+			tsens_s8_p1: s8_p1@204 {
+				reg = <0x204 0x2>;
+				bits = <4 6>;
+			};
+			tsens_s8_p2: s8_p2@205 {
+				reg = <0x205 0x1>;
+				bits = <2 6>;
+			};
+			tsens_s9_p1: s9_p1@206 {
+				reg = <0x206 0x1>;
+				bits = <0 6>;
+			};
+			tsens_s9_p2: s9_p2@206 {
+				reg = <0x206 0x2>;
+				bits = <6 6>;
+			};
+			tsens_mode: mode@208 {
+				reg = <0x208 1>;
+				bits = <0 3>;
+			};
+			tsens_base1: base1@208 {
+				reg = <0x208 2>;
+				bits = <3 8>;
+			};
+			tsens_base2: base2@208 {
+				reg = <0x209 2>;
+				bits = <3 8>;
+			};
 			cpr_efuse_quot_offset1: qoffset1@231 {
 				reg = <0x231 0x4>;
 				bits = <4 7>;
@@ -451,8 +543,30 @@ tsens: thermal-sensor@4a9000 {
 			compatible = "qcom,qcs404-tsens", "qcom,tsens-v1";
 			reg = <0x004a9000 0x1000>, /* TM */
 			      <0x004a8000 0x1000>; /* SROT */
-			nvmem-cells = <&tsens_caldata>;
-			nvmem-cell-names = "calib";
+			nvmem-cells = <&tsens_caldata>, <&tsens_mode>,
+				      <&tsens_base1>, <&tsens_base2>,
+				      <&tsens_s0_p1>, <&tsens_s0_p2>,
+				      <&tsens_s1_p1>, <&tsens_s1_p2>,
+				      <&tsens_s2_p1>, <&tsens_s2_p2>,
+				      <&tsens_s3_p1>, <&tsens_s3_p2>,
+				      <&tsens_s4_p1>, <&tsens_s4_p2>,
+				      <&tsens_s5_p1>, <&tsens_s5_p2>,
+				      <&tsens_s6_p1>, <&tsens_s6_p2>,
+				      <&tsens_s7_p1>, <&tsens_s7_p2>,
+				      <&tsens_s8_p1>, <&tsens_s8_p2>,
+				      <&tsens_s9_p1>, <&tsens_s9_p2>;
+			nvmem-cell-names = "calib", "mode",
+					   "base1", "base2",
+					   "s0_p1", "s0_p2",
+					   "s1_p1", "s1_p2",
+					   "s2_p1", "s2_p2",
+					   "s3_p1", "s3_p2",
+					   "s4_p1", "s4_p2",
+					   "s5_p1", "s5_p2",
+					   "s6_p1", "s6_p2",
+					   "s7_p1", "s7_p2",
+					   "s8_p1", "s8_p2",
+					   "s9_p1", "s9_p2";
 			#qcom,sensors = <10>;
 			interrupts = <GIC_SPI 184 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "uplow";
-- 
2.35.1

