Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 50C506D34B7
	for <lists+devicetree@lfdr.de>; Sun,  2 Apr 2023 00:08:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229765AbjDAWIb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 1 Apr 2023 18:08:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41008 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230216AbjDAWI0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 1 Apr 2023 18:08:26 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D59B12BEE4
        for <devicetree@vger.kernel.org>; Sat,  1 Apr 2023 15:08:23 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id s20so6332789ljp.7
        for <devicetree@vger.kernel.org>; Sat, 01 Apr 2023 15:08:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680386903;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vpAPdB8a1KxE/31P7n445ITkGLoAKYAjcNmqI1cmGfU=;
        b=SD4iocEM9j+/oieJlsvl9UQdJPs2hHxkezcB9YDxP97z8qcJtXlMgBBX2Oip75L1Gr
         uThwfZZ1MXX+s4rdHGk+iRCmzLXGhz9qJE5nXAYpacVn1R9MV7A0kdvJkjDoketVY2pv
         tco6T4uVW8GttLasAQnLiqPnwHc16IPSheNGWQLhNsu+AN03TGrPFECudDW9G5Kke9+4
         QI72OscETsAF9ZqThS4Do+D4c0VyPFjpilCsUstnVXeQwl5WEVBU62wngNRjOx3up3xv
         9gHMOTwHDNsUgFB3RiUdhPWPUA+3mTYYmKtNsTOBWaQwiOrvxolIqekKii2QWLKokDAq
         +k6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680386903;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vpAPdB8a1KxE/31P7n445ITkGLoAKYAjcNmqI1cmGfU=;
        b=bxQs32ZTa8Y2fZ2FOoiwh44CG2O6wGNTqqDpeFcPGeyhtLWI28EqvfSdELvvh2twD9
         0tSm+OO+10tR5PU4Lz/pnyi+cYpQ+f5E00hkMUbjknY9x8Rv3kYaZnFjjgDhGzP4BOT3
         7GTbYqFn2PuuR+SlEokIyxYjCBBYgPjQde8UjzegCZm7U6j8kg74zT0MZtdeEkv39Cwz
         PAvQ8xeT1uti6dYWIi5nPJASd0iPIwzLBy76GGxlG3uUaHw+nXvM5UAhGO+Q3s84NiWO
         oB2B2JSWyfxh9i1RmPMzOKm2YOFwvoGLz0UsLpi/2YWx4HkLTYsUl8c1VyUeMCFN2nOX
         mH2Q==
X-Gm-Message-State: AAQBX9dBVw3+Kdcl+bjDCEE2hph0tuRbT/l/5mEUZfir2Av2Wfz23W+Q
        XNMQ7RjIxMRbSW/O83umWZob8Q==
X-Google-Smtp-Source: AKy350ZvcqUde57P5OLtX4UdluqR5qLCim03qpfPgnHRL+SLBDdb8ouQPncf3Zd94cdr2C7KW55hqQ==
X-Received: by 2002:a2e:83d5:0:b0:298:6d34:31c6 with SMTP id s21-20020a2e83d5000000b002986d3431c6mr8739886ljh.47.1680386903378;
        Sat, 01 Apr 2023 15:08:23 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id k17-20020a2e9211000000b0029bd4d0d3f2sm997590ljg.33.2023.04.01.15.08.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Apr 2023 15:08:23 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Johan Hovold <johan+linaro@kernel.org>,
        Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>, linux-iio@vger.kernel.org
Subject: [PATCH v2 19/22] arm64: dts: qcom: sc8280xp*: use pmr735a.dtsi
Date:   Sun,  2 Apr 2023 01:08:07 +0300
Message-Id: <20230401220810.3563708-20-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230401220810.3563708-1-dmitry.baryshkov@linaro.org>
References: <20230401220810.3563708-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Stop duplicating declarations of pmr735a PMICs, use existing file to
prevent possible future issues.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8280xp-pmics.dtsi | 20 ++------------------
 1 file changed, 2 insertions(+), 18 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-pmics.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp-pmics.dtsi
index 3d2914d13fd2..7a1298a71791 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp-pmics.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8280xp-pmics.dtsi
@@ -25,21 +25,5 @@
 #define PMIC_NODE pmc82802
 #include "pm8350.dtsi"
 
-&spmi_bus {
-	pmr735a: pmic@4 {
-		compatible = "qcom,pmr735a", "qcom,spmi-pmic";
-		reg = <0x4 SPMI_USID>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		pmr735a_gpios: gpio@8800 {
-			compatible = "qcom,pmr735a-gpio", "qcom,spmi-gpio";
-			reg = <0x8800>;
-			gpio-controller;
-			gpio-ranges = <&pmr735a_gpios 0 0 4>;
-			#gpio-cells = <2>;
-			interrupt-controller;
-			#interrupt-cells = <2>;
-		};
-	};
-};
+/* SID 4 */
+#include "pmr735a.dtsi"
-- 
2.30.2

