Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 50EDA652B53
	for <lists+devicetree@lfdr.de>; Wed, 21 Dec 2022 03:05:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234395AbiLUCFy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Dec 2022 21:05:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53330 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234403AbiLUCFj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Dec 2022 21:05:39 -0500
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 22ABB20363
        for <devicetree@vger.kernel.org>; Tue, 20 Dec 2022 18:05:35 -0800 (PST)
Received: by mail-lf1-x129.google.com with SMTP id y25so21337298lfa.9
        for <devicetree@vger.kernel.org>; Tue, 20 Dec 2022 18:05:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XkyG2IacraZMGoFgIeKXwijzA6Sfysr26Bu7C03Zg4M=;
        b=FpUjurz8BpJ1fEsg9tT4erdJ5FA8TIvNS6jlqGog1zZZS6IfS4zBVID407/z/ZIAc7
         Wn6SfM2ys8pgE3VkZqBBNHjHeO2QXv6SdElrJtB0f710MkIirst8MN8pCr6o+CRhW+Wo
         WXK2njvMkLmy5Ygr+CQG2ma/FG+bbjxarvk2o9kkoaAJLJqHt8bAToaQW+zp41Mt+69i
         7NdnKWzkL0UGa8acBMSQYPTXLOnlRlrpyIZMJxoOyxUkE9Cj6kLezzxK7wh3MwqWPBv3
         TLpGXG4orUy1uu+WdRJsy1HmTIPDb9ROQ8BXd10N5ehM3//GcoOZcFKseYuGPy5wqCTH
         NJqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XkyG2IacraZMGoFgIeKXwijzA6Sfysr26Bu7C03Zg4M=;
        b=Hl2ofA2jRnaal11UOJy1Hnn7wPYs4fk79NEa87yeGGhPvm96BaT0eaNId9xnFy+vXD
         9PXIKh4YRdm9W5W7OgO2LKDe/ht8RRgw4RAc9laBWH+4AUKMds/t5IJ/BOi3iqzF252C
         aELBvkOi7gRfJoFU4Ugxqma8hHg4a2dBnOHQLSALHwLRzHVXPYS3hYJ/f43UgRWChLkj
         n/qZGgfefxI4ntZ1IySdXVqc1QuNb05tBWXgm1ouwy2HUtzcnE1EZjqv6HnXB3EJf/Y3
         AySGBnREfVW/1S7+Ge1Knbr+D4jVW64hH8Zzw9SZWFcIw/Tlha37l4yAAAOIFHPGmBmS
         829Q==
X-Gm-Message-State: AFqh2kqIeRRbhpCt3Fyw9teLfNt4PCH9dtOVbiaf5cBBTF5LHQoexxye
        8MA4IoMvvmA6qb1KBOmK60YF4BiZFRUoX7mRIkc=
X-Google-Smtp-Source: AMrXdXu7tawOfAEhoOBzcxeyyRP2bevKhGAYuaxvy1RHhS/NXV2lDOYMrae3QJP+cGaFqWw1u7PHbw==
X-Received: by 2002:a05:6512:3b2c:b0:4a4:68b7:deab with SMTP id f44-20020a0565123b2c00b004a468b7deabmr1704086lfv.7.1671588334701;
        Tue, 20 Dec 2022 18:05:34 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id q18-20020a056512211200b004b257fef958sm1673048lfr.94.2022.12.20.18.05.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Dec 2022 18:05:34 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Amit Kucheria <amitk@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Zhang Rui <rui.zhang@intel.com>
Cc:     "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH v4 16/20] arm64: dts: qcom: msm8916: specify per-sensor calibration cells
Date:   Wed, 21 Dec 2022 04:05:16 +0200
Message-Id: <20221221020520.1326964-17-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221221020520.1326964-1-dmitry.baryshkov@linaro.org>
References: <20221221020520.1326964-1-dmitry.baryshkov@linaro.org>
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

Specify pre-parsed per-sensor calibration nvmem cells in the tsens
device node rather than parsing the whole data blob in the driver.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8916.dtsi | 81 +++++++++++++++++++++++++--
 1 file changed, 75 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
index 2ca8e977fc2a..a1b36f95f587 100644
--- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
@@ -442,11 +442,68 @@ qfprom: qfprom@5c000 {
 			reg = <0x0005c000 0x1000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
-			tsens_caldata: caldata@d0 {
-				reg = <0xd0 0x8>;
+
+			tsens_base1: base1@d0 {
+				reg = <0xd0 0x1>;
+				bits = <0 7>;
+			};
+
+			tsens_s0_p1: s0-p1@d0 {
+				reg = <0xd0 0x2>;
+				bits = <7 5>;
+			};
+
+			tsens_s0_p2: s0-p2@d1 {
+				reg = <0xd1 0x2>;
+				bits = <4 5>;
+			};
+
+			tsens_s1_p1: s1-p1@d2 {
+				reg = <0xd2 0x1>;
+				bits = <1 5>;
+			};
+			tsens_s1_p2: s1-p2@d2 {
+				reg = <0xd2 0x2>;
+				bits = <6 5>;
+			};
+			tsens_s2_p1: s2-p1@d3 {
+				reg = <0xd3 0x1>;
+				bits = <3 5>;
+			};
+
+			tsens_s2_p2: s2-p2@d4 {
+				reg = <0xd4 0x1>;
+				bits = <0 5>;
 			};
-			tsens_calsel: calsel@ec {
-				reg = <0xec 0x4>;
+
+			tsens_s3_p1: s3-p1@d4 {
+				reg = <0xd4 0x2>;
+				bits = <5 5>;
+			};
+
+			tsens_s3_p2: s3-p2@d5 {
+				reg = <0xd5 0x1>;
+				bits = <2 5>;
+			};
+
+			tsens_s4_p1: s4-p1@d5 {
+				reg = <0xd5 0x2>;
+				bits = <7 5>;
+			};
+
+			tsens_s4_p2: s4-p2@d6 {
+				reg = <0xd6 0x2>;
+				bits = <4 5>;
+			};
+
+			tsens_base2: base2@d7 {
+				reg = <0xd7 0x1>;
+				bits = <1 7>;
+			};
+
+			tsens_mode: mode@ec {
+				reg = <0xef 0x1>;
+				bits = <5 3>;
 			};
 		};
 
@@ -473,8 +530,20 @@ tsens: thermal-sensor@4a9000 {
 			compatible = "qcom,msm8916-tsens", "qcom,tsens-v0_1";
 			reg = <0x004a9000 0x1000>, /* TM */
 			      <0x004a8000 0x1000>; /* SROT */
-			nvmem-cells = <&tsens_caldata>, <&tsens_calsel>;
-			nvmem-cell-names = "calib", "calib_sel";
+			nvmem-cells = <&tsens_mode>,
+				      <&tsens_base1>, <&tsens_base2>,
+				      <&tsens_s0_p1>, <&tsens_s0_p2>,
+				      <&tsens_s1_p1>, <&tsens_s1_p2>,
+				      <&tsens_s2_p1>, <&tsens_s2_p2>,
+				      <&tsens_s3_p1>, <&tsens_s3_p2>,
+				      <&tsens_s4_p1>, <&tsens_s4_p2>;
+			nvmem-cell-names = "mode",
+					   "base1", "base2",
+					   "s0_p1", "s0_p2",
+					   "s1_p1", "s1_p2",
+					   "s2_p1", "s2_p2",
+					   "s3_p1", "s3_p2",
+					   "s4_p1", "s4_p2";
 			#qcom,sensors = <5>;
 			interrupts = <GIC_SPI 184 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "uplow";
-- 
2.35.1

