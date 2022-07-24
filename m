Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 603B757F55C
	for <lists+devicetree@lfdr.de>; Sun, 24 Jul 2022 16:04:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229578AbiGXOEb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 24 Jul 2022 10:04:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57080 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229839AbiGXOEa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 24 Jul 2022 10:04:30 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2AB012744
        for <devicetree@vger.kernel.org>; Sun, 24 Jul 2022 07:04:26 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id t17so2151825lfk.0
        for <devicetree@vger.kernel.org>; Sun, 24 Jul 2022 07:04:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=MDl7hBBXyC2qyXOHEtNz4BkIThpm3reDpOdNdy0xwpY=;
        b=V0Xr0E4DcJ+7+T9b9fM1RN4rkPeqZUtYqAtqhDAep3UUGOg9k42smjvDyjwW3tWgBp
         dN6u48LiwriKmQWuicn9Cpeu7Njpc1TLIiQ10Y5wJI2QPyl+6xavs3iJBoa9Gr+orcEu
         CQZVKMoPmQygmFUHyiVJLl2P48pTMAihC1FUhKcPHea89ItpxaIKgFdaMrocIdakFhHD
         AE302y5Fl2fa/fEB6yaORgD1c2y7EMVdpPIQgCeWVNmabW74pJh7F6yy6wE3ch8Xxwrl
         WN6p3+dT69ZQJ1yJXgQ4gFvoCawFjAo+OSfbDZiM0wD4jqABOzUak1Bb6MMAS0dmSzVx
         /dNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=MDl7hBBXyC2qyXOHEtNz4BkIThpm3reDpOdNdy0xwpY=;
        b=DmRUgbZ3W60ekr6eM2yC2uegPeIDirCCoJyorYH2pccA6W784UcJu6eI6Fwa0B7dsB
         v2RVGTnvkYGAm3cYfj0UgHBnlnpPU5w64PEgkmsdVjWHE70YTlZyZHu/1Y0nGkDGJbXF
         Q9NxgWQdHOGMfnJD6yoXzUUKZxg/l0V/WyyUGEJblUnbFJZuBNZBJnFA8OaGWBZ54uSu
         0Kp5FUt5EhcTcasQIukFWuYYrIEr87wJgoOm4F3pbRFST0T7g0dPT41ydp0Wy7IXSpSJ
         LWNbbzT1iEge1dLDPXli1Nxs3hS12RLrBgpUGsoPIoqkdIIuCrdbm7F/EFGWS0bS2e7i
         Easg==
X-Gm-Message-State: AJIora8zyMEGAdZYKVQukBeH+189yZkhvltUY0WVgZhqoCXKqBLIiWON
        HVIdJMWVEIkYMnf7lm0N5hJseQ==
X-Google-Smtp-Source: AGRyM1vyJyRGdDu6DQBPZNwjI9MhtKju4zQOvNPrVi3iBLAFwRtSL0JX/Woq+RMrMmiSiFGeUI+DzQ==
X-Received: by 2002:a05:6512:258b:b0:48a:83da:4f0a with SMTP id bf11-20020a056512258b00b0048a83da4f0amr1805432lfb.256.1658671464976;
        Sun, 24 Jul 2022 07:04:24 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id s13-20020a056512202d00b00489dedf1dcfsm2192622lfs.289.2022.07.24.07.04.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Jul 2022 07:04:24 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Yassine Oudjana <yassine.oudjana@gmail.com>,
        Yassine Oudjana <y.oudjana@protonmail.com>
Subject: [PATCH 2/7] arm64: dts: qcom: msm8996: Add MSM8996 Pro support
Date:   Sun, 24 Jul 2022 17:04:16 +0300
Message-Id: <20220724140421.1933004-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220724140421.1933004-1-dmitry.baryshkov@linaro.org>
References: <20220724140421.1933004-1-dmitry.baryshkov@linaro.org>
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

From: Yassine Oudjana <y.oudjana@protonmail.com>

Qualcomm MSM8996 Pro is a variant of MSM8996 with higher frequencies
supported both on CPU and GPU. There are other minor hardware
differencies in the CPU and GPU regulators and bus fabrics.

However this results in significant differences between 8996 and 8996
Pro CPU OPP tables. Judging from msm-3.18 there are only few common
frequencies supported by both msm8996 and msm8996pro. Rather than
hacking the tables for msm8996, split msm8996pro support into a separate
file. Later this would allow having additional customizations for the
CBF, CPR, retulators, etc.

Fixes: 90173a954a22 ("arm64: dts: qcom: msm8996: Add CPU opps")
Signed-off-by: Yassine Oudjana <y.oudjana@protonmail.com>
[DB: Realigned supported-hw to keep compat with current cpufreq driver]
[DB: dropped all non-CPU-OPP changes]
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8996.dtsi    |  82 +++----
 arch/arm64/boot/dts/qcom/msm8996pro.dtsi | 266 +++++++++++++++++++++++
 2 files changed, 307 insertions(+), 41 deletions(-)
 create mode 100644 arch/arm64/boot/dts/qcom/msm8996pro.dtsi

diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
index 742eac4ce9b3..41c09895268e 100644
--- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
@@ -143,82 +143,82 @@ cluster0_opp: opp-table-cluster0 {
 		/* Nominal fmax for now */
 		opp-307200000 {
 			opp-hz = /bits/ 64 <307200000>;
-			opp-supported-hw = <0x77>;
+			opp-supported-hw = <0x7>;
 			clock-latency-ns = <200000>;
 		};
 		opp-422400000 {
 			opp-hz = /bits/ 64 <422400000>;
-			opp-supported-hw = <0x77>;
+			opp-supported-hw = <0x7>;
 			clock-latency-ns = <200000>;
 		};
 		opp-480000000 {
 			opp-hz = /bits/ 64 <480000000>;
-			opp-supported-hw = <0x77>;
+			opp-supported-hw = <0x7>;
 			clock-latency-ns = <200000>;
 		};
 		opp-556800000 {
 			opp-hz = /bits/ 64 <556800000>;
-			opp-supported-hw = <0x77>;
+			opp-supported-hw = <0x7>;
 			clock-latency-ns = <200000>;
 		};
 		opp-652800000 {
 			opp-hz = /bits/ 64 <652800000>;
-			opp-supported-hw = <0x77>;
+			opp-supported-hw = <0x7>;
 			clock-latency-ns = <200000>;
 		};
 		opp-729600000 {
 			opp-hz = /bits/ 64 <729600000>;
-			opp-supported-hw = <0x77>;
+			opp-supported-hw = <0x7>;
 			clock-latency-ns = <200000>;
 		};
 		opp-844800000 {
 			opp-hz = /bits/ 64 <844800000>;
-			opp-supported-hw = <0x77>;
+			opp-supported-hw = <0x7>;
 			clock-latency-ns = <200000>;
 		};
 		opp-960000000 {
 			opp-hz = /bits/ 64 <960000000>;
-			opp-supported-hw = <0x77>;
+			opp-supported-hw = <0x7>;
 			clock-latency-ns = <200000>;
 		};
 		opp-1036800000 {
 			opp-hz = /bits/ 64 <1036800000>;
-			opp-supported-hw = <0x77>;
+			opp-supported-hw = <0x7>;
 			clock-latency-ns = <200000>;
 		};
 		opp-1113600000 {
 			opp-hz = /bits/ 64 <1113600000>;
-			opp-supported-hw = <0x77>;
+			opp-supported-hw = <0x7>;
 			clock-latency-ns = <200000>;
 		};
 		opp-1190400000 {
 			opp-hz = /bits/ 64 <1190400000>;
-			opp-supported-hw = <0x77>;
+			opp-supported-hw = <0x7>;
 			clock-latency-ns = <200000>;
 		};
 		opp-1228800000 {
 			opp-hz = /bits/ 64 <1228800000>;
-			opp-supported-hw = <0x77>;
+			opp-supported-hw = <0x7>;
 			clock-latency-ns = <200000>;
 		};
 		opp-1324800000 {
 			opp-hz = /bits/ 64 <1324800000>;
-			opp-supported-hw = <0x77>;
+			opp-supported-hw = <0x7>;
 			clock-latency-ns = <200000>;
 		};
 		opp-1401600000 {
 			opp-hz = /bits/ 64 <1401600000>;
-			opp-supported-hw = <0x77>;
+			opp-supported-hw = <0x7>;
 			clock-latency-ns = <200000>;
 		};
 		opp-1478400000 {
 			opp-hz = /bits/ 64 <1478400000>;
-			opp-supported-hw = <0x77>;
+			opp-supported-hw = <0x7>;
 			clock-latency-ns = <200000>;
 		};
 		opp-1593600000 {
 			opp-hz = /bits/ 64 <1593600000>;
-			opp-supported-hw = <0x77>;
+			opp-supported-hw = <0x7>;
 			clock-latency-ns = <200000>;
 		};
 	};
@@ -231,127 +231,127 @@ cluster1_opp: opp-table-cluster1 {
 		/* Nominal fmax for now */
 		opp-307200000 {
 			opp-hz = /bits/ 64 <307200000>;
-			opp-supported-hw = <0x77>;
+			opp-supported-hw = <0x7>;
 			clock-latency-ns = <200000>;
 		};
 		opp-403200000 {
 			opp-hz = /bits/ 64 <403200000>;
-			opp-supported-hw = <0x77>;
+			opp-supported-hw = <0x7>;
 			clock-latency-ns = <200000>;
 		};
 		opp-480000000 {
 			opp-hz = /bits/ 64 <480000000>;
-			opp-supported-hw = <0x77>;
+			opp-supported-hw = <0x7>;
 			clock-latency-ns = <200000>;
 		};
 		opp-556800000 {
 			opp-hz = /bits/ 64 <556800000>;
-			opp-supported-hw = <0x77>;
+			opp-supported-hw = <0x7>;
 			clock-latency-ns = <200000>;
 		};
 		opp-652800000 {
 			opp-hz = /bits/ 64 <652800000>;
-			opp-supported-hw = <0x77>;
+			opp-supported-hw = <0x7>;
 			clock-latency-ns = <200000>;
 		};
 		opp-729600000 {
 			opp-hz = /bits/ 64 <729600000>;
-			opp-supported-hw = <0x77>;
+			opp-supported-hw = <0x7>;
 			clock-latency-ns = <200000>;
 		};
 		opp-806400000 {
 			opp-hz = /bits/ 64 <806400000>;
-			opp-supported-hw = <0x77>;
+			opp-supported-hw = <0x7>;
 			clock-latency-ns = <200000>;
 		};
 		opp-883200000 {
 			opp-hz = /bits/ 64 <883200000>;
-			opp-supported-hw = <0x77>;
+			opp-supported-hw = <0x7>;
 			clock-latency-ns = <200000>;
 		};
 		opp-940800000 {
 			opp-hz = /bits/ 64 <940800000>;
-			opp-supported-hw = <0x77>;
+			opp-supported-hw = <0x7>;
 			clock-latency-ns = <200000>;
 		};
 		opp-1036800000 {
 			opp-hz = /bits/ 64 <1036800000>;
-			opp-supported-hw = <0x77>;
+			opp-supported-hw = <0x7>;
 			clock-latency-ns = <200000>;
 		};
 		opp-1113600000 {
 			opp-hz = /bits/ 64 <1113600000>;
-			opp-supported-hw = <0x77>;
+			opp-supported-hw = <0x7>;
 			clock-latency-ns = <200000>;
 		};
 		opp-1190400000 {
 			opp-hz = /bits/ 64 <1190400000>;
-			opp-supported-hw = <0x77>;
+			opp-supported-hw = <0x7>;
 			clock-latency-ns = <200000>;
 		};
 		opp-1248000000 {
 			opp-hz = /bits/ 64 <1248000000>;
-			opp-supported-hw = <0x77>;
+			opp-supported-hw = <0x7>;
 			clock-latency-ns = <200000>;
 		};
 		opp-1324800000 {
 			opp-hz = /bits/ 64 <1324800000>;
-			opp-supported-hw = <0x77>;
+			opp-supported-hw = <0x7>;
 			clock-latency-ns = <200000>;
 		};
 		opp-1401600000 {
 			opp-hz = /bits/ 64 <1401600000>;
-			opp-supported-hw = <0x77>;
+			opp-supported-hw = <0x7>;
 			clock-latency-ns = <200000>;
 		};
 		opp-1478400000 {
 			opp-hz = /bits/ 64 <1478400000>;
-			opp-supported-hw = <0x77>;
+			opp-supported-hw = <0x7>;
 			clock-latency-ns = <200000>;
 		};
 		opp-1555200000 {
 			opp-hz = /bits/ 64 <1555200000>;
-			opp-supported-hw = <0x77>;
+			opp-supported-hw = <0x7>;
 			clock-latency-ns = <200000>;
 		};
 		opp-1632000000 {
 			opp-hz = /bits/ 64 <1632000000>;
-			opp-supported-hw = <0x77>;
+			opp-supported-hw = <0x7>;
 			clock-latency-ns = <200000>;
 		};
 		opp-1708800000 {
 			opp-hz = /bits/ 64 <1708800000>;
-			opp-supported-hw = <0x77>;
+			opp-supported-hw = <0x7>;
 			clock-latency-ns = <200000>;
 		};
 		opp-1785600000 {
 			opp-hz = /bits/ 64 <1785600000>;
-			opp-supported-hw = <0x77>;
+			opp-supported-hw = <0x7>;
 			clock-latency-ns = <200000>;
 		};
 		opp-1824000000 {
 			opp-hz = /bits/ 64 <1824000000>;
-			opp-supported-hw = <0x77>;
+			opp-supported-hw = <0x7>;
 			clock-latency-ns = <200000>;
 		};
 		opp-1920000000 {
 			opp-hz = /bits/ 64 <1920000000>;
-			opp-supported-hw = <0x77>;
+			opp-supported-hw = <0x7>;
 			clock-latency-ns = <200000>;
 		};
 		opp-1996800000 {
 			opp-hz = /bits/ 64 <1996800000>;
-			opp-supported-hw = <0x77>;
+			opp-supported-hw = <0x7>;
 			clock-latency-ns = <200000>;
 		};
 		opp-2073600000 {
 			opp-hz = /bits/ 64 <2073600000>;
-			opp-supported-hw = <0x77>;
+			opp-supported-hw = <0x7>;
 			clock-latency-ns = <200000>;
 		};
 		opp-2150400000 {
 			opp-hz = /bits/ 64 <2150400000>;
-			opp-supported-hw = <0x77>;
+			opp-supported-hw = <0x7>;
 			clock-latency-ns = <200000>;
 		};
 	};
diff --git a/arch/arm64/boot/dts/qcom/msm8996pro.dtsi b/arch/arm64/boot/dts/qcom/msm8996pro.dtsi
new file mode 100644
index 000000000000..63e1b4ec7a36
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/msm8996pro.dtsi
@@ -0,0 +1,266 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/*
+ * Copyright (c) 2022, Linaro Limited
+ */
+
+#include "msm8996.dtsi"
+
+/ {
+	/delete-node/ opp-table-cluster0;
+	/delete-node/ opp-table-cluster1;
+
+	/*
+	 * On MSM8996 Pro the cpufreq driver shifts speed bins into the high
+	 * nibble of supported hw, so speed bin 0 becomes 0x10, speed bin 1
+	 * becomes 0x20, speed 2 becomes 0x40.
+	 */
+
+	cluster0_opp: opp-table-cluster0 {
+		compatible = "operating-points-v2-kryo-cpu";
+		nvmem-cells = <&speedbin_efuse>;
+		opp-shared;
+
+		opp-307200000 {
+			opp-hz = /bits/ 64 <307200000>;
+			opp-supported-hw = <0x70>;
+			clock-latency-ns = <200000>;
+		};
+		opp-384000000 {
+			opp-hz = /bits/ 64 <384000000>;
+			opp-supported-hw = <0x70>;
+			clock-latency-ns = <200000>;
+		};
+		opp-460800000 {
+			opp-hz = /bits/ 64 <460800000>;
+			opp-supported-hw = <0x70>;
+			clock-latency-ns = <200000>;
+		};
+		opp-537600000 {
+			opp-hz = /bits/ 64 <537600000>;
+			opp-supported-hw = <0x70>;
+			clock-latency-ns = <200000>;
+		};
+		opp-614400000 {
+			opp-hz = /bits/ 64 <614400000>;
+			opp-supported-hw = <0x70>;
+			clock-latency-ns = <200000>;
+		};
+		opp-691200000 {
+			opp-hz = /bits/ 64 <691200000>;
+			opp-supported-hw = <0x70>;
+			clock-latency-ns = <200000>;
+		};
+		opp-768000000 {
+			opp-hz = /bits/ 64 <768000000>;
+			opp-supported-hw = <0x70>;
+			clock-latency-ns = <200000>;
+		};
+		opp-844800000 {
+			opp-hz = /bits/ 64 <844800000>;
+			opp-supported-hw = <0x70>;
+			clock-latency-ns = <200000>;
+		};
+		opp-902400000 {
+			opp-hz = /bits/ 64 <902400000>;
+			opp-supported-hw = <0x70>;
+			clock-latency-ns = <200000>;
+		};
+		opp-979200000 {
+			opp-hz = /bits/ 64 <979200000>;
+			opp-supported-hw = <0x70>;
+			clock-latency-ns = <200000>;
+		};
+		opp-1056000000 {
+			opp-hz = /bits/ 64 <1056000000>;
+			opp-supported-hw = <0x70>;
+			clock-latency-ns = <200000>;
+		};
+		opp-1132800000 {
+			opp-hz = /bits/ 64 <1132800000>;
+			opp-supported-hw = <0x70>;
+			clock-latency-ns = <200000>;
+		};
+		opp-1209600000 {
+			opp-hz = /bits/ 64 <1209600000>;
+			opp-supported-hw = <0x70>;
+			clock-latency-ns = <200000>;
+		};
+		opp-1286400000 {
+			opp-hz = /bits/ 64 <1286400000>;
+			opp-supported-hw = <0x70>;
+			clock-latency-ns = <200000>;
+		};
+		opp-1363200000 {
+			opp-hz = /bits/ 64 <1363200000>;
+			opp-supported-hw = <0x70>;
+			clock-latency-ns = <200000>;
+		};
+		opp-1440000000 {
+			opp-hz = /bits/ 64 <1440000000>;
+			opp-supported-hw = <0x70>;
+			clock-latency-ns = <200000>;
+		};
+		opp-1516800000 {
+			opp-hz = /bits/ 64 <1516800000>;
+			opp-supported-hw = <0x70>;
+			clock-latency-ns = <200000>;
+		};
+		opp-1593600000 {
+			opp-hz = /bits/ 64 <1593600000>;
+			opp-supported-hw = <0x70>;
+			clock-latency-ns = <200000>;
+		};
+		opp-1996800000 {
+			opp-hz = /bits/ 64 <1996800000>;
+			opp-supported-hw = <0x20>;
+			clock-latency-ns = <200000>;
+		};
+		opp-2188800000 {
+			opp-hz = /bits/ 64 <2188800000>;
+			opp-supported-hw = <0x10>;
+			clock-latency-ns = <200000>;
+		};
+	};
+
+	cluster1_opp: opp-table-cluster1 {
+		compatible = "operating-points-v2-kryo-cpu";
+		nvmem-cells = <&speedbin_efuse>;
+		opp-shared;
+
+		opp-307200000 {
+			opp-hz = /bits/ 64 <307200000>;
+			opp-supported-hw = <0x70>;
+			clock-latency-ns = <200000>;
+		};
+		opp-384000000 {
+			opp-hz = /bits/ 64 <384000000>;
+			opp-supported-hw = <0x70>;
+			clock-latency-ns = <200000>;
+		};
+		opp-460800000 {
+			opp-hz = /bits/ 64 <460800000>;
+			opp-supported-hw = <0x70>;
+			clock-latency-ns = <200000>;
+		};
+		opp-537600000 {
+			opp-hz = /bits/ 64 <537600000>;
+			opp-supported-hw = <0x70>;
+			clock-latency-ns = <200000>;
+		};
+		opp-614400000 {
+			opp-hz = /bits/ 64 <614400000>;
+			opp-supported-hw = <0x70>;
+			clock-latency-ns = <200000>;
+		};
+		opp-691200000 {
+			opp-hz = /bits/ 64 <691200000>;
+			opp-supported-hw = <0x70>;
+			clock-latency-ns = <200000>;
+		};
+		opp-748800000 {
+			opp-hz = /bits/ 64 <748800000>;
+			opp-supported-hw = <0x70>;
+			clock-latency-ns = <200000>;
+		};
+		opp-825600000 {
+			opp-hz = /bits/ 64 <825600000>;
+			opp-supported-hw = <0x70>;
+			clock-latency-ns = <200000>;
+		};
+		opp-902400000 {
+			opp-hz = /bits/ 64 <902400000>;
+			opp-supported-hw = <0x70>;
+			clock-latency-ns = <200000>;
+		};
+		opp-979200000 {
+			opp-hz = /bits/ 64 <979200000>;
+			opp-supported-hw = <0x70>;
+			clock-latency-ns = <200000>;
+		};
+		opp-1056000000 {
+			opp-hz = /bits/ 64 <1056000000>;
+			opp-supported-hw = <0x70>;
+			clock-latency-ns = <200000>;
+		};
+		opp-1132800000 {
+			opp-hz = /bits/ 64 <1132800000>;
+			opp-supported-hw = <0x70>;
+			clock-latency-ns = <200000>;
+		};
+		opp-1209600000 {
+			opp-hz = /bits/ 64 <1209600000>;
+			opp-supported-hw = <0x70>;
+			clock-latency-ns = <200000>;
+		};
+		opp-1286400000 {
+			opp-hz = /bits/ 64 <1286400000>;
+			opp-supported-hw = <0x70>;
+			clock-latency-ns = <200000>;
+		};
+		opp-1363200000 {
+			opp-hz = /bits/ 64 <1363200000>;
+			opp-supported-hw = <0x70>;
+			clock-latency-ns = <200000>;
+		};
+		opp-1440000000 {
+			opp-hz = /bits/ 64 <1440000000>;
+			opp-supported-hw = <0x70>;
+			clock-latency-ns = <200000>;
+		};
+		opp-1516800000 {
+			opp-hz = /bits/ 64 <1516800000>;
+			opp-supported-hw = <0x70>;
+			clock-latency-ns = <200000>;
+		};
+		opp-1593600000 {
+			opp-hz = /bits/ 64 <1593600000>;
+			opp-supported-hw = <0x70>;
+			clock-latency-ns = <200000>;
+		};
+		opp-1670400000 {
+			opp-hz = /bits/ 64 <1670400000>;
+			opp-supported-hw = <0x70>;
+			clock-latency-ns = <200000>;
+		};
+		opp-1747200000 {
+			opp-hz = /bits/ 64 <1747200000>;
+			opp-supported-hw = <0x70>;
+			clock-latency-ns = <200000>;
+		};
+		opp-1824000000 {
+			opp-hz = /bits/ 64 <1824000000>;
+			opp-supported-hw = <0x70>;
+			clock-latency-ns = <200000>;
+		};
+		opp-1900800000 {
+			opp-hz = /bits/ 64 <1900800000>;
+			opp-supported-hw = <0x70>;
+			clock-latency-ns = <200000>;
+		};
+		opp-1977600000 {
+			opp-hz = /bits/ 64 <1977600000>;
+			opp-supported-hw = <0x30>;
+			clock-latency-ns = <200000>;
+		};
+		opp-2054400000 {
+			opp-hz = /bits/ 64 <2054400000>;
+			opp-supported-hw = <0x30>;
+			clock-latency-ns = <200000>;
+		};
+		opp-2150400000 {
+			opp-hz = /bits/ 64 <2150400000>;
+			opp-supported-hw = <0x30>;
+			clock-latency-ns = <200000>;
+		};
+		opp-2246400000 {
+			opp-hz = /bits/ 64 <2246400000>;
+			opp-supported-hw = <0x10>;
+			clock-latency-ns = <200000>;
+		};
+		opp-2342400000 {
+			opp-hz = /bits/ 64 <2342400000>;
+			opp-supported-hw = <0x10>;
+			clock-latency-ns = <200000>;
+		};
+	};
+};
-- 
2.35.1

