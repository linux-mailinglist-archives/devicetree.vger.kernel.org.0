Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3D1E0789A80
	for <lists+devicetree@lfdr.de>; Sun, 27 Aug 2023 03:02:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230138AbjH0BAM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 26 Aug 2023 21:00:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43810 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230158AbjH0A74 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 26 Aug 2023 20:59:56 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3EEBDCDE
        for <devicetree@vger.kernel.org>; Sat, 26 Aug 2023 17:59:54 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-4ff09632194so3344375e87.2
        for <devicetree@vger.kernel.org>; Sat, 26 Aug 2023 17:59:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693097992; x=1693702792;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OFX9JomlQAWrg2wVtXgvkj8bMtfCZmpZ79ww1DHQiqs=;
        b=d9XJYEtAXaHQxWCfiGtABa6+ZjSO7d5Etab4Lq16s0+cqbd01jUU6pWm0jmXWvLUJh
         vnlbiLNEr3aun7KnSZZ7oC4Ga6GmUEARILZj5fr4YLNRb7QacVu8kelwAyyJo+Bd81eF
         9/KsC1s+qHS7cVX8H5AwnmBzN0GhWyAlOSRQ449BRHaxCknJOsNLKtw7BTsLVHgYHrmx
         PhJt1dDJJdqZdF2LmqlZ84Li/sXEJoPRTfbKas/5gQSZ4Dp7XPTrZMDWSisdZenV5HKF
         LbGgqasEs9BP9TjJ72mVdMs3FM7E85Jim2SWxcCWY4z915c4kN8fo9/OQF4O4ehOjLfe
         gRig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693097992; x=1693702792;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OFX9JomlQAWrg2wVtXgvkj8bMtfCZmpZ79ww1DHQiqs=;
        b=X2Y3aZfp+IwzBVeT/SLN2c2B/IQ9ZgN77S6LP1TBA0doodU8bRsW8v5wDSzZd9yvaq
         wi698Vojt8yXr7ZfSVKhfaguAtaqeNJ2bSNkkm3h5Q4tnDVVVQjGe9mawhcVSzJwPRKX
         tEWsI6I4kgtTYH8NQX29RntIIBwbi6AZW3Vtpi//41B9IZh1W0ZZ/Vb4OOmwK0fISxOd
         gZZxNQ6tjbGbozEg/KVeJYQjVlEjGcdoRe1Uhj1VB3+LzpFnBY+9tRclouhev3wSJg3O
         mGTtu5iZW3ync+zqyKtzp41UTy+nSHIg4NQxoO/ZpuWRO7Rsek+5JfHFjXW3Lz0BRzXQ
         1wkA==
X-Gm-Message-State: AOJu0YyDlwZBETZ6FY0o5dNSy9x9m58xKGaumbPsONrqUdd4oaG1Ws6s
        CQH/b7r/d3WyqiiGFVDnZ3+x/DpU9EfU5SubAV8=
X-Google-Smtp-Source: AGHT+IHMLg8w6V1LK4JwagUnMLHiP+5FMqqW/3YNhL9uILlmjgXg1SGDwf1QDlAxoZYdwQpG7ajbmQ==
X-Received: by 2002:a05:6512:39d3:b0:500:b302:3281 with SMTP id k19-20020a05651239d300b00500b3023281mr1415967lfu.27.1693097992388;
        Sat, 26 Aug 2023 17:59:52 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id p18-20020ac246d2000000b00500a08e42e7sm917729lfo.124.2023.08.26.17.59.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Aug 2023 17:59:51 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     devicetree@vger.kernel.org, Lee Jones <lee@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        linux-arm-msm@vger.kernel.org, Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        linux-iio@vger.kernel.org,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        linux-input@vger.kernel.org, Pavel Machek <pavel@ucw.cz>,
        linux-leds@vger.kernel.org
Subject: [PATCH v4 27/38] ARM: dts: qcom: pm8921: switch to interrupts-extended
Date:   Sun, 27 Aug 2023 03:59:09 +0300
Message-Id: <20230827005920.898719-28-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230827005920.898719-1-dmitry.baryshkov@linaro.org>
References: <20230827005920.898719-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Merge interrups and interrupt-parent properties into a single
interrupts-extended property.

Suggested-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Reviewed-by: Konrad DYbcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom/pm8921.dtsi | 13 +++++--------
 1 file changed, 5 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/pm8921.dtsi b/arch/arm/boot/dts/qcom/pm8921.dtsi
index fa00b57e28b9..360a179670c5 100644
--- a/arch/arm/boot/dts/qcom/pm8921.dtsi
+++ b/arch/arm/boot/dts/qcom/pm8921.dtsi
@@ -11,9 +11,8 @@ pm8921: pmic {
 		pwrkey@1c {
 			compatible = "qcom,pm8921-pwrkey";
 			reg = <0x1c>;
-			interrupt-parent = <&pm8921>;
-			interrupts = <50 IRQ_TYPE_EDGE_RISING>,
-				     <51 IRQ_TYPE_EDGE_RISING>;
+			interrupts-extended = <&pm8921 50 IRQ_TYPE_EDGE_RISING>,
+					      <&pm8921 51 IRQ_TYPE_EDGE_RISING>;
 			debounce = <15625>;
 			pull-up;
 		};
@@ -32,17 +31,15 @@ pm8921_mpps: mpps@50 {
 		rtc@11d {
 			compatible = "qcom,pm8921-rtc";
 			reg = <0x11d>;
-			interrupt-parent = <&pm8921>;
-			interrupts = <39 IRQ_TYPE_EDGE_RISING>;
+			interrupts-extended = <&pm8921 39 IRQ_TYPE_EDGE_RISING>;
 			allow-set-time;
 		};
 
 		pm8921_keypad: keypad@148 {
 			compatible = "qcom,pm8921-keypad";
 			reg = <0x148>;
-			interrupt-parent = <&pm8921>;
-			interrupts = <74 IRQ_TYPE_EDGE_RISING>,
-				     <75 IRQ_TYPE_EDGE_RISING>;
+			interrupts-extended = <&pm8921 74 IRQ_TYPE_EDGE_RISING>,
+					      <&pm8921 75 IRQ_TYPE_EDGE_RISING>;
 			debounce = <15>;
 			scan-delay = <32>;
 			row-hold = <91500>;
-- 
2.39.2

