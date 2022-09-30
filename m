Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 107B35F11E7
	for <lists+devicetree@lfdr.de>; Fri, 30 Sep 2022 20:52:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232365AbiI3Swu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Sep 2022 14:52:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38522 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232375AbiI3Swr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Sep 2022 14:52:47 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15BA5166F12
        for <devicetree@vger.kernel.org>; Fri, 30 Sep 2022 11:52:45 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id bu25so8204768lfb.3
        for <devicetree@vger.kernel.org>; Fri, 30 Sep 2022 11:52:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=yagnoXPpdisxjLquzNJUJ+8o1VxJY2+2aeZJHTS9lWs=;
        b=P5ebK31GraKKUrR7Ir0NoejOSkFhZl26fKYxEGExReO1ArzbGjyP9A2nDJI82Mvx3b
         codW9nd+Xftda0d2bhewKiZ4UD5bTH4lPpk8Aehxec4TX+hjgzQxViz4/mPEVVVOwhAp
         KQtPEa63mVYzdVQesQaKUIuBEBOnmsFIIK3kKl75DDe+6watljYTBTrMP1DDENtKv8ZQ
         KQ5JbeuudSXNIrne4qeR1gs6KsuyF9zPvPNkL+thBJ/wSgsXcfeL7Mdp7lAkpfyN2CWe
         ZXnEJZkrJsjDSTLliDf36hezESnnsmAXZKcDH3TjkLlqEcXub1XKqB3zZ4LIqel1TgOJ
         rLkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=yagnoXPpdisxjLquzNJUJ+8o1VxJY2+2aeZJHTS9lWs=;
        b=azONpVCyDosZopoUZWWzusWEomjnoEZy+LzBV7ib1OoDKdSVaTY3E1MsK82IRtJjQ5
         6i8R5Y808C5Ks7mB3zs+NIdt11JrYeVkD0rPpDr1jn+2g2pyTmXZPzGrsaS3Dt4qVvXA
         v+XyLxsgHFsFO46CNiRWdZ4Y8VQ70MQQSMKZEwg1m1S+lSOc4RW9IBKhSofJ/m7ZMR2q
         kZ+jmt5lwDKutiWv9Rz23U0XABEBf+ds8YWFz9v5WGOfWGA2GSH9JRm1TfETYXiSQO9o
         vNsgQaf2HhE/HlXVAQx1gT0u6N9FCkNBcLl/rHUKLKqIgQPHq/bIokgxJ5END8H2FFFV
         rw4Q==
X-Gm-Message-State: ACrzQf3BLuXAGpUUnomI+TsqZ7KPc7Q5+27gBw1mbZQkM5tqf2fs87/R
        Z2AVNJ3b6SIns9nXXUgRFJdtXA==
X-Google-Smtp-Source: AMsMyM4poGBD5mJrhmjaq73OGgosPKSB3pi2zxT5V7uE8tUuHRlAEGSZPUTqRCIHtpG/Bh8iRcrFrw==
X-Received: by 2002:a19:ee0a:0:b0:497:a2e3:a9dc with SMTP id g10-20020a19ee0a000000b00497a2e3a9dcmr3597050lfb.96.1664563964256;
        Fri, 30 Sep 2022 11:52:44 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id i8-20020a056512006800b00492cfecf1c0sm374703lfo.245.2022.09.30.11.52.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Sep 2022 11:52:43 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 09/23] ARM: dts: qcom: apq8064-cm-qs600: pull 3p3v regulator from soc node
Date:   Fri, 30 Sep 2022 21:52:22 +0300
Message-Id: <20220930185236.867655-10-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220930185236.867655-1-dmitry.baryshkov@linaro.org>
References: <20220930185236.867655-1-dmitry.baryshkov@linaro.org>
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

The 3.3V regulator is not part of the SoC, so pull it from the SoC
node.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom-apq8064-cm-qs600.dts | 17 +++++++----------
 1 file changed, 7 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boot/dts/qcom-apq8064-cm-qs600.dts b/arch/arm/boot/dts/qcom-apq8064-cm-qs600.dts
index 65684da52e2e..5ff0d9a275cc 100644
--- a/arch/arm/boot/dts/qcom-apq8064-cm-qs600.dts
+++ b/arch/arm/boot/dts/qcom-apq8064-cm-qs600.dts
@@ -29,16 +29,13 @@ sdcc4_pwrseq: sdcc4_pwrseq {
 		};
 	};
 
-	soc {
-		/* on board fixed 3.3v supply */
-		v3p3_fixed: v3p3 {
-			compatible = "regulator-fixed";
-			regulator-name = "PCIE V3P3";
-			regulator-min-microvolt = <3300000>;
-			regulator-max-microvolt = <3300000>;
-			regulator-always-on;
-		};
-
+	/* on board fixed 3.3v supply */
+	v3p3_fixed: regulator-v3p3 {
+		compatible = "regulator-fixed";
+		regulator-name = "PCIE V3P3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
 	};
 };
 
-- 
2.35.1

