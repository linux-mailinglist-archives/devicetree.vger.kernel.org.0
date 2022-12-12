Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EE34E649B96
	for <lists+devicetree@lfdr.de>; Mon, 12 Dec 2022 11:03:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231979AbiLLKDB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Dec 2022 05:03:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37012 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232001AbiLLKCv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Dec 2022 05:02:51 -0500
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5DC1642D
        for <devicetree@vger.kernel.org>; Mon, 12 Dec 2022 02:02:49 -0800 (PST)
Received: by mail-lj1-x22d.google.com with SMTP id h10so11933332ljk.11
        for <devicetree@vger.kernel.org>; Mon, 12 Dec 2022 02:02:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jNmkawudC9o2i2lApH4ifxK0mB62T36PSTxPxQ/BsK4=;
        b=rUqzFcpYL5kVxkWQUtgSuzazThU2VaUzB5HXOcoKqB8J/CAZAVlwDpvFCBvrw6Ycr1
         PEowLQE7oIN9JiW7lt0XqpWx2LxeI2Sz2yYuC4elWP2B5KkkQIGnFRkwHrpfAxJSNq6G
         Y28JQ5BAd07Dxdob3Ixiqi2Rg7kpGz8OpnR3tTFBFubbvdSYdea59WqsiKss29UXe9/I
         7zmNaGWWyFgESOKhoLSUF4Pa7DlAJ/hfXdCmW5Me9u6z0c0uY57YvLppk6Ev3BMMD2dv
         bSfA85C9+y7/tKd2w/f2Hs5eDeUlK4jjN0EGHDu6ehN8CIDgVxRbzKrAqlUjXoiuc6lO
         xGaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jNmkawudC9o2i2lApH4ifxK0mB62T36PSTxPxQ/BsK4=;
        b=XiURHXQ6YOHiDYiTKljhjz4eXLXRVAhY99sbRjkWmPbwRWCyBrzbdaG5eY2MgHRnKK
         WHrD+xgWkKkIbRLtLrDg1RnleWjEFVWnVZUUVMfS1Q9JdIyJhr2RDeh1oEl68X2zULOU
         DziM2wTVgLS9y8n05jBShHpN57KHpe2OpqSDED3f0/f9AF/qLXFL/FOp26ToAhQRih9+
         hfApE3obh9mLncPcRqQgwbaEFueTR8nVx4vr4sDDE+oAhLPM0EwcuTOH83odyH6reuZV
         jwBjbKlYOSJa++7Q3fKMd1IjG3kY4aHOWxF7M5zAQZoPmOmznPYWqAcyS1M5yV6iXnOT
         wz2g==
X-Gm-Message-State: ANoB5pmfYBQwoNuFQkvqszBQfRRFHDZxC9z0JEOz1xj4S4FcDHJ1rzMi
        s5qQwUo++zWGdIIv7TeE9BYh8g==
X-Google-Smtp-Source: AA0mqf4gQDEgf3PZARg8dvVRyITalDU7LUi6I4WX66UBJXIT6PNCZZuBEvdt+BNilM7YBwaPwjqsFA==
X-Received: by 2002:a05:651c:1148:b0:26f:db35:d1f8 with SMTP id h8-20020a05651c114800b0026fdb35d1f8mr3724792ljo.4.1670839368150;
        Mon, 12 Dec 2022 02:02:48 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id i124-20020a2e2282000000b0027712379ec8sm1145101lji.28.2022.12.12.02.02.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Dec 2022 02:02:47 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/6] arm64: dts: qcom: sc7180: move QUP and QSPI opp tables out of SoC node
Date:   Mon, 12 Dec 2022 11:02:29 +0100
Message-Id: <20221212100232.138519-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221212100232.138519-1-krzysztof.kozlowski@linaro.org>
References: <20221212100232.138519-1-krzysztof.kozlowski@linaro.org>
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

The SoC node is a simple-bus and its schema expect to have nodes only
with unit addresses:

  sc7180-trogdor-lazor-r3.dtb: soc@0: opp-table-qspi: {'compatible': ['operating-points-v2'], 'phandle': [[186]], 'opp-75000000':
    ...  'required-opps': [[47]]}} should not be valid under {'type': 'object'}

Move to top-level OPP tables:
 - QUP which is shared between multiple nodes,
 - QSPI which cannot be placed in its node due to address/size cells.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

---

Changes since v1:
1. Only rebase due to node reorderings.
2. Add Rb tag.
---
 arch/arm64/boot/dts/qcom/sc7180.dtsi | 76 ++++++++++++++--------------
 1 file changed, 38 insertions(+), 38 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
index 6d3e86ce2936..eb1e1ea12ff6 100644
--- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
@@ -494,6 +494,44 @@ cpu6_opp16: opp-2553600000 {
 		};
 	};
 
+	qspi_opp_table: opp-table-qspi {
+		compatible = "operating-points-v2";
+
+		opp-75000000 {
+			opp-hz = /bits/ 64 <75000000>;
+			required-opps = <&rpmhpd_opp_low_svs>;
+		};
+
+		opp-150000000 {
+			opp-hz = /bits/ 64 <150000000>;
+			required-opps = <&rpmhpd_opp_svs>;
+		};
+
+		opp-300000000 {
+			opp-hz = /bits/ 64 <300000000>;
+			required-opps = <&rpmhpd_opp_nom>;
+		};
+	};
+
+	qup_opp_table: opp-table-qup {
+		compatible = "operating-points-v2";
+
+		opp-75000000 {
+			opp-hz = /bits/ 64 <75000000>;
+			required-opps = <&rpmhpd_opp_low_svs>;
+		};
+
+		opp-100000000 {
+			opp-hz = /bits/ 64 <100000000>;
+			required-opps = <&rpmhpd_opp_svs>;
+		};
+
+		opp-128000000 {
+			opp-hz = /bits/ 64 <128000000>;
+			required-opps = <&rpmhpd_opp_nom>;
+		};
+	};
+
 	pmu {
 		compatible = "arm,armv8-pmuv3";
 		interrupts = <GIC_PPI 5 IRQ_TYPE_LEVEL_HIGH>;
@@ -739,25 +777,6 @@ opp-384000000 {
 			};
 		};
 
-		qup_opp_table: opp-table-qup {
-			compatible = "operating-points-v2";
-
-			opp-75000000 {
-				opp-hz = /bits/ 64 <75000000>;
-				required-opps = <&rpmhpd_opp_low_svs>;
-			};
-
-			opp-100000000 {
-				opp-hz = /bits/ 64 <100000000>;
-				required-opps = <&rpmhpd_opp_svs>;
-			};
-
-			opp-128000000 {
-				opp-hz = /bits/ 64 <128000000>;
-				required-opps = <&rpmhpd_opp_nom>;
-			};
-		};
-
 		qupv3_id_0: geniqup@8c0000 {
 			compatible = "qcom,geni-se-qup";
 			reg = <0 0x008c0000 0 0x6000>;
@@ -2655,25 +2674,6 @@ opp-202000000 {
 			};
 		};
 
-		qspi_opp_table: opp-table-qspi {
-			compatible = "operating-points-v2";
-
-			opp-75000000 {
-				opp-hz = /bits/ 64 <75000000>;
-				required-opps = <&rpmhpd_opp_low_svs>;
-			};
-
-			opp-150000000 {
-				opp-hz = /bits/ 64 <150000000>;
-				required-opps = <&rpmhpd_opp_svs>;
-			};
-
-			opp-300000000 {
-				opp-hz = /bits/ 64 <300000000>;
-				required-opps = <&rpmhpd_opp_nom>;
-			};
-		};
-
 		qspi: spi@88dc000 {
 			compatible = "qcom,sc7180-qspi", "qcom,qspi-v1";
 			reg = <0 0x088dc000 0 0x600>;
-- 
2.34.1

