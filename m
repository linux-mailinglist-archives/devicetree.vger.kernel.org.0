Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0FFA061774C
	for <lists+devicetree@lfdr.de>; Thu,  3 Nov 2022 08:11:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230348AbiKCHLE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Nov 2022 03:11:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45380 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231160AbiKCHKf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Nov 2022 03:10:35 -0400
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com [IPv6:2607:f8b0:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C9F813CDD
        for <devicetree@vger.kernel.org>; Thu,  3 Nov 2022 00:10:25 -0700 (PDT)
Received: by mail-pg1-x52c.google.com with SMTP id f63so932216pgc.2
        for <devicetree@vger.kernel.org>; Thu, 03 Nov 2022 00:10:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ao59MJL2Kd8o80aS64wARpotwSK9xLqDNm1aBbrm0cs=;
        b=LpEscd7L3VKq5cj6auHwpXvO8RAtA2t6bdHnTsYVJr0XeOMBi8xLVvIitz5/FzjGuw
         21hd5arRPpB7oiNrgajxM2yiuMtAqkp4rINnnw0T7/0ErdxxE4fVh8lUc2v6g0d8jFpd
         CVjBkrBTjVmDrLGEmBcAnrWEv7kxzk/hP8f15J9HK4ogBOQrwmvlYj8NPdTxJ9rQNXPx
         UTvsWRwQ7/oEa6/u94UgZ0O3meZkHywlRBJKHsKvadFATT/efCCNr2t5yPyt4hF1lqcq
         LWvuz6XhifC7/JCCNDAayNIAZ3DxEW7AsMLGa2j4JiL94L4TK4bAtZET+rjl8CuwEgh1
         3wBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ao59MJL2Kd8o80aS64wARpotwSK9xLqDNm1aBbrm0cs=;
        b=F6KQUuqiXqxhVLUx+omBcwF00QKWCdPRtQZBEZWiJ0D4gVK2Xr582lTbc5NC4jgC/m
         pqm64uTx6c3gvKd/+H+DrZ7tayus8BZr4zHlhnslGaC5KPyX07Trv3M8VaEHDeWsJPvm
         mxW8bhjbCVzhnDKsq6eKmf7ojb+hi20YbrpOev+3ucw3P4yNqn0xNh0OqeQ5stwREBzZ
         rc6HNSWsoO89dhfYWbVG+wFTUYYxJxgCPi+ALVuTHwhlB45VJjulq4YdvenX1QOW/OZA
         BTPuUZyAbUBVXSTetltRmCTUo/mJA9bwKUF+ZzerOqScH5f7aiQxNnXJBGTT5SN3B+ex
         s3aQ==
X-Gm-Message-State: ACrzQf3UJeALAUZLTkYqFNu4swwzRGRHKZ8l04K3/TjZtH1ZjYKaacXm
        QSnGCQzx1vn2r+58B7kQelrb
X-Google-Smtp-Source: AMsMyM7C9a8vYOBzBDKVCcfO/NYdAX1blzj5mIJ+wkScFIp24c6vNl2MWxoOwxHpC3y1WlpENV7Cig==
X-Received: by 2002:a63:de46:0:b0:46e:c3bd:e47d with SMTP id y6-20020a63de46000000b0046ec3bde47dmr24529585pgi.609.1667459424801;
        Thu, 03 Nov 2022 00:10:24 -0700 (PDT)
Received: from localhost.localdomain ([117.193.208.64])
        by smtp.gmail.com with ESMTPSA id s9-20020a170903214900b00186748fe6ccsm9451244ple.214.2022.11.03.00.10.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Nov 2022 00:10:23 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     andersson@kernel.org
Cc:     konrad.dybcio@somainline.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, johan+linaro@kernel.org,
        quic_jprakash@quicinc.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        steev@kali.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 10/12] arm64: dts: qcom: sc8280xp-x13s: Add PMR735A VADC channel
Date:   Thu,  3 Nov 2022 12:39:09 +0530
Message-Id: <20221103070911.20019-11-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221103070911.20019-1-manivannan.sadhasivam@linaro.org>
References: <20221103070911.20019-1-manivannan.sadhasivam@linaro.org>
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

Add VADC channel of PMR735A for measuring the on-chip die temperature.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@somainline.org>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
index bb96c350eb09..d0077c7a7a6e 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
+++ b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
@@ -9,6 +9,7 @@
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/iio/qcom,spmi-adc7-pm8350.h>
 #include <dt-bindings/iio/qcom,spmi-adc7-pmk8350.h>
+#include <dt-bindings/iio/qcom,spmi-adc7-pmr735a.h>
 #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
 
 #include "sc8280xp.dtsi"
@@ -250,6 +251,12 @@ sys-therm8@347 {
 		qcom,hw-settle-time = <200>;
 		qcom,ratiometric;
 	};
+
+	pmic-die-temp@403 {
+		reg = <PMR735A_ADC7_DIE_TEMP>;
+		label = "pmr735a_die_temp";
+		qcom,pre-scaling = <1 1>;
+	};
 };
 
 &qup0 {
-- 
2.25.1

