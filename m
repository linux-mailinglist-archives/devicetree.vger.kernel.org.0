Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C258D65AB61
	for <lists+devicetree@lfdr.de>; Sun,  1 Jan 2023 20:41:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231566AbjAATlF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 1 Jan 2023 14:41:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44246 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231616AbjAATk5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 1 Jan 2023 14:40:57 -0500
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F18E610F1
        for <devicetree@vger.kernel.org>; Sun,  1 Jan 2023 11:40:50 -0800 (PST)
Received: by mail-lf1-x129.google.com with SMTP id 1so38879762lfz.4
        for <devicetree@vger.kernel.org>; Sun, 01 Jan 2023 11:40:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sKkMnuQ5SojDaY5hYIWgCCfvVjdyKx2GWzmqbTIcADY=;
        b=VYcYC1ax1MLrJgHBCvyJGwKT3zrfoNe7w5d6nRnsAf2zRFDnuOC54MOf8waZkajwTa
         cwJAQXk8bfSz2pgWDou6XNpWr8FL4SLrXgaLTASMDGU0Sl1D0D9TAwCBIFOAMg34kB6+
         W+Z3K4BJVE7OW2SDAjBkJHcVEfKsd80atSqXLO0PWhpyYIfS7uhtEyIvCEQbU9F9aA8u
         mZAkgta6oyi8E4a/FSSWRP4O8GyJkAfm8Zsv369SkfMbxpkQpfHfU97MHNdy9+y5NDsT
         fqf248rMt4d1HkJnu0LDJl3eOhNNcJ2TcEFbzMl+KHKWDjFDddpxpBwDNCZrT8e1Omy5
         JKSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sKkMnuQ5SojDaY5hYIWgCCfvVjdyKx2GWzmqbTIcADY=;
        b=TcSYWf18yWtJtPU2O0IJdcMeT45Du5AifUokdPPOGv50cMrpoWG+CrUj6j4w+KHoTl
         /SEfQ10htlAjJUPvcxmUJNcQtC7w/FPhcPz8EWIbuzWzzuTOX6/oDbKv5UaPhxfZkZd1
         BzFYlwEpz86VUZzaEg0qnIXm5+28gXr0zQB4HnRCSbhF73i/DiB8UbAYtX6hCyOF5hus
         eM+70LccG8K9D3g4QxSWz/V0dELW2T3pB9hdGxPV5wLNfpH/2NQZ8sNGdMafSjmDevvd
         EjF16rhzzN6tHu5gNLMWldDmZXxvUUsHizFfriImRF6ESwY2//PVascHStbI0MFkpgH1
         38Zw==
X-Gm-Message-State: AFqh2krOEi1Rlc1DnWYv83dvUnMKHI7RaU2mfudIMd7myrqlXj3vGPFW
        Y2MK9WPWF3FeGYtvkhFkJ1nDzw==
X-Google-Smtp-Source: AMrXdXsV1UpdNGuYD6mNR3cR3m/Mw9FyJKRGAeJm5OTkaFBzZ1WRSE5o++aaXVdQX3FIUy2BVQn6hQ==
X-Received: by 2002:a05:6512:24e:b0:4b5:82f1:7f3d with SMTP id b14-20020a056512024e00b004b582f17f3dmr17895100lfo.58.1672602050591;
        Sun, 01 Jan 2023 11:40:50 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id w11-20020a056512098b00b004a100c21eaesm4228013lft.97.2023.01.01.11.40.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Jan 2023 11:40:49 -0800 (PST)
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
        Shawn Guo <shawn.guo@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH v6 16/20] arm64: dts: qcom: msm8916: specify per-sensor calibration cells
Date:   Sun,  1 Jan 2023 21:40:30 +0200
Message-Id: <20230101194034.831222-17-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230101194034.831222-1-dmitry.baryshkov@linaro.org>
References: <20230101194034.831222-1-dmitry.baryshkov@linaro.org>
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

Specify pre-parsed per-sensor calibration nvmem cells in the tsens
device node rather than parsing the whole data blob in the driver.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8916.dtsi | 85 +++++++++++++++++++++++++--
 1 file changed, 79 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
index 2ca8e977fc2a..2ae21c5ade03 100644
--- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
@@ -442,11 +442,70 @@ qfprom: qfprom@5c000 {
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
+			};
+
+			// no tsens with hw_id 3
+
+			tsens_s4_p1: s4-p1@d4 {
+				reg = <0xd4 0x2>;
+				bits = <5 5>;
+			};
+
+			tsens_s4_p2: s4-p2@d5 {
+				reg = <0xd5 0x1>;
+				bits = <2 5>;
+			};
+
+			tsens_s5_p1: s5-p1@d5 {
+				reg = <0xd5 0x2>;
+				bits = <7 5>;
 			};
-			tsens_calsel: calsel@ec {
-				reg = <0xec 0x4>;
+
+			tsens_s5_p2: s5-p2@d6 {
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
 
@@ -473,8 +532,22 @@ tsens: thermal-sensor@4a9000 {
 			compatible = "qcom,msm8916-tsens", "qcom,tsens-v0_1";
 			reg = <0x004a9000 0x1000>, /* TM */
 			      <0x004a8000 0x1000>; /* SROT */
-			nvmem-cells = <&tsens_caldata>, <&tsens_calsel>;
-			nvmem-cell-names = "calib", "calib_sel";
+
+			// no hw_id 3
+			nvmem-cells = <&tsens_mode>,
+				      <&tsens_base1>, <&tsens_base2>,
+				      <&tsens_s0_p1>, <&tsens_s0_p2>,
+				      <&tsens_s1_p1>, <&tsens_s1_p2>,
+				      <&tsens_s2_p1>, <&tsens_s2_p2>,
+				      <&tsens_s4_p1>, <&tsens_s4_p2>,
+				      <&tsens_s5_p1>, <&tsens_s5_p2>;
+			nvmem-cell-names = "mode",
+					   "base1", "base2",
+					   "s0_p1", "s0_p2",
+					   "s1_p1", "s1_p2",
+					   "s2_p1", "s2_p2",
+					   "s4_p1", "s4_p2",
+					   "s5_p1", "s5_p2";
 			#qcom,sensors = <5>;
 			interrupts = <GIC_SPI 184 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "uplow";
-- 
2.39.0

