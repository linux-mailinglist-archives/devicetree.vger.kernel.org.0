Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7AB3D2954EE
	for <lists+devicetree@lfdr.de>; Thu, 22 Oct 2020 00:51:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2506934AbgJUWvM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Oct 2020 18:51:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58116 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2506931AbgJUWvM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Oct 2020 18:51:12 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07C35C0613D2
        for <devicetree@vger.kernel.org>; Wed, 21 Oct 2020 15:51:12 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id 77so5220886lfl.2
        for <devicetree@vger.kernel.org>; Wed, 21 Oct 2020 15:51:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=BwMmGlmMLcmqzYJ99gKjkUq1Wudan5TSJn8Ws/0M4Fo=;
        b=AFKXbTqTffv34MWjRlmq6pP/YfSnDofZEm/D+KKLhKONbksIYGc1G2K56b5zCgeGup
         EVPUY8rg4NznWvX2KPOXW80tNfESY/SKNJnTNI9CsYhrF5I1XBRmZTOc7+XIgofphjD0
         F2ss2OYFSFnbPZypuklUBpuVSUOL+2//a/NEjP9d9ZD3fAkkjm8EkM4NQw9bQkhRlf8l
         me/ZxasKFhzp1uHjwiSzh5jS5iJbd7Q84iHA+oJtSBvZ4/k+kyCknrWJjsSYqjK3PuFI
         pp6rTEB/4NjZXgC2X4Bf+wSg+bajD/4vemUKnhDXB1Ep5tUsgOnlBtN1bEQs6TDkk/af
         PG0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BwMmGlmMLcmqzYJ99gKjkUq1Wudan5TSJn8Ws/0M4Fo=;
        b=Z7Fj0QWYa2LFAMswvV+Wo/Fs0qzvXuiFvwoSF+bwiaZZ1Y2j2W7DP0//Mgzrmw8ndM
         vxqMpT1OULmqIJZqT42uCiHqqiSRgCbC7faiF2dC6aFgP+U1DMnnTSCvjindEx08r6ag
         d0vHjjefa/TFecfCXlOzYeF6yfsNNBPrn4y3fJ3XCdN7uZLnFhRyPukVgytKfjqcYJIS
         MO6tA68rA7R0c5YBXw62iWOHocgR+tj3Op+KdYP7gDMgnAQKpn/0dRhURcApYTbWfE1j
         vyFwQMu1zBVKGuZ38WHhS/xIX7d8/yQJtgSnNwzUpdsZY9ee2SzaZ0gIEUPRghl1pxEB
         HgcQ==
X-Gm-Message-State: AOAM532AQE8RxUwOxVDTteSt4o6Pk8QrNf74x/zbtoSiRlYC5RX78EZl
        0+/0VxxVOKdhqvqfIsQVwU7DSQ==
X-Google-Smtp-Source: ABdhPJzSukJqLpmqudb6P2NeiUqTrUtbcSdjoAloKGndrg3quWc/flHrhTJ4MbVvw19zpqIUezFR9w==
X-Received: by 2002:a05:6512:3053:: with SMTP id b19mr2156595lfb.338.1603320670442;
        Wed, 21 Oct 2020 15:51:10 -0700 (PDT)
Received: from eriador.lan ([188.162.64.195])
        by smtp.gmail.com with ESMTPSA id h11sm652062ljc.21.2020.10.21.15.51.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Oct 2020 15:51:09 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Pavel Machek <pavel@ucw.cz>, Dan Murphy <dmurphy@ti.com>
Cc:     Rob Herring <robh+dt@kernel.org>, linux-leds@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: [PATCH 3/5] arm64: dts: pm8150b: add Light Pulse Generator device node
Date:   Thu, 22 Oct 2020 01:50:58 +0300
Message-Id: <20201021225100.162795-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201021225100.162795-1-dmitry.baryshkov@linaro.org>
References: <20201021225100.162795-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add device node defining LPG/PWM block on PM8150B PMIC chip.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/pm8150b.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/pm8150b.dtsi b/arch/arm64/boot/dts/qcom/pm8150b.dtsi
index d6e075f92b1e..30e7a5f19e5f 100644
--- a/arch/arm64/boot/dts/qcom/pm8150b.dtsi
+++ b/arch/arm64/boot/dts/qcom/pm8150b.dtsi
@@ -133,5 +133,14 @@ pmic@3 {
 		reg = <0x3 SPMI_USID>;
 		#address-cells = <1>;
 		#size-cells = <0>;
+
+		pm8150b_lpg: lpg {
+			compatible = "qcom,pm8150b-lpg";
+
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			status = "disabled";
+		};
 	};
 };
-- 
2.28.0

