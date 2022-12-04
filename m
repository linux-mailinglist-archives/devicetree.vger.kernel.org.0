Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4D793641B00
	for <lists+devicetree@lfdr.de>; Sun,  4 Dec 2022 06:59:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229913AbiLDF7d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 4 Dec 2022 00:59:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49824 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229956AbiLDF7Y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 4 Dec 2022 00:59:24 -0500
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3CF51A3A5
        for <devicetree@vger.kernel.org>; Sat,  3 Dec 2022 21:59:21 -0800 (PST)
Received: by mail-lf1-x133.google.com with SMTP id c1so13728398lfi.7
        for <devicetree@vger.kernel.org>; Sat, 03 Dec 2022 21:59:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Hdm4k36lSgKUduI+vKUza9+RFJV80P07x7VO1CheZLk=;
        b=kp2fZN+Pq/mkTtSXyVYY2Qu/uXNe6NveKLGt9l86brlSp1Nil/+Nl8tk54ofbQGE/t
         FazdNUeKwczhzw6gfwmr+IEz0r8AUcLjkobPEWJ4zn8T+Rm9K6z5ZZkTqALtjxjhgq/z
         0BCnKGBfkOv7n3LkYw5ZGxFt+mY1zXKmFq796k4RPeQHj3wdFeYJqOxDMjONYwFivZU+
         SOU3XD34B/8UtdVoZP7HaN2uSpgFqgsBIFq+JPS7g27YHUUEZkxLA9QI28ogll8Fi03U
         ovtSUwgtbl/pD6P6dHTfyKGtv+p5hPoZH8VhFzeggI0wvjWw7br/2ePQ4i6w1J2ShcW2
         4rlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Hdm4k36lSgKUduI+vKUza9+RFJV80P07x7VO1CheZLk=;
        b=Fb0kUIkxnAEeAMAhciTqWAd2rMhFSxS50IpMRO5h8CMHMxH8iSULXV4sgM8OCJVUa+
         K25Reh193PIout/t33LMEHDRNKp3TdcE/y3sFC+loQwNHugsrEYnFt3wacAlpgDmF+DG
         J6hXqFnt+5gO6ncdX6XvUol6/egLXtA6TSS3UoCN7tzgCv3MM2n8pLnu4Jys5deCLNEJ
         6RbdqQ8hNIHXduYrf12XLgRYywYzA7sP5kpOCbSEmvnUsXUXGtVYD0Cw2VC5fizkbWGl
         enNEC86qBBHyuIDyubru/7uCAPP3InUE0nRfg8iDK5jKRVNE1d/882O8hq8pXV6m+95C
         UDQg==
X-Gm-Message-State: ANoB5pmjzMVqLXsYKTjmCZdAcA62TwaxiDZagtTzgFXJrcb11PFhDf88
        ykczcikDKE53cDrT90VlEqsRbA==
X-Google-Smtp-Source: AA0mqf5/t6wzC4BfLBfgWKBDdTMJzXVL4dnfLyjJCwD/DkON04ZSyJ0lNRgjb4M1lAC2p48duLMiAw==
X-Received: by 2002:a05:6512:3dac:b0:4b0:38df:e825 with SMTP id k44-20020a0565123dac00b004b038dfe825mr24678476lfv.471.1670133560196;
        Sat, 03 Dec 2022 21:59:20 -0800 (PST)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id o6-20020a05651205c600b004917a30c82bsm1650028lfo.153.2022.12.03.21.59.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Dec 2022 21:59:19 -0800 (PST)
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
Cc:     linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH v2 12/15] arm64: dts: qcom: msm8916: specify per-sensor calibration cells
Date:   Sun,  4 Dec 2022 07:59:06 +0200
Message-Id: <20221204055909.1351895-13-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221204055909.1351895-1-dmitry.baryshkov@linaro.org>
References: <20221204055909.1351895-1-dmitry.baryshkov@linaro.org>
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
 arch/arm64/boot/dts/qcom/msm8916.dtsi | 70 ++++++++++++++++++++++++---
 1 file changed, 64 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
index 2ca8e977fc2a..af7ba66bb7cd 100644
--- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
@@ -442,11 +442,57 @@ qfprom: qfprom@5c000 {
 			reg = <0x0005c000 0x1000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
-			tsens_caldata: caldata@d0 {
-				reg = <0xd0 0x8>;
+			tsens_base1: base1@d0 {
+				reg = <0xd0 0x1>;
+				bits = <0 7>;
 			};
-			tsens_calsel: calsel@ec {
-				reg = <0xec 0x4>;
+			tsens_s0_p1: s0_p1@d0 {
+				reg = <0xd0 0x2>;
+				bits = <7 5>;
+			};
+			tsens_s0_p2: s0_p2@d1 {
+				reg = <0xd1 0x2>;
+				bits = <4 5>;
+			};
+			tsens_s1_p1: s1_p1@d2 {
+				reg = <0xd2 0x1>;
+				bits = <1 5>;
+			};
+			tsens_s1_p2: s1_p2@d2 {
+				reg = <0xd2 0x2>;
+				bits = <6 5>;
+			};
+			tsens_s2_p1: s2_p1@d3 {
+				reg = <0xd3 0x1>;
+				bits = <3 5>;
+			};
+			tsens_s2_p2: s2_p2@d4 {
+				reg = <0xd4 0x1>;
+				bits = <0 5>;
+			};
+			tsens_s3_p1: s3_p1@d4 {
+				reg = <0xd4 0x2>;
+				bits = <5 5>;
+			};
+			tsens_s3_p2: s3_p2@d5 {
+				reg = <0xd5 0x1>;
+				bits = <2 5>;
+			};
+			tsens_s4_p1: s4_p1@d5 {
+				reg = <0xd5 0x2>;
+				bits = <7 5>;
+			};
+			tsens_s4_p2: s4_p2@d6 {
+				reg = <0xd6 0x2>;
+				bits = <4 5>;
+			};
+			tsens_base2: base2@d7 {
+				reg = <0xd7 0x1>;
+				bits = <1 7>;
+			};
+			tsens_mode: mode@ec {
+				reg = <0xef 0x1>;
+				bits = <5 3>;
 			};
 		};
 
@@ -473,8 +519,20 @@ tsens: thermal-sensor@4a9000 {
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

