Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 256D832C0A4
	for <lists+devicetree@lfdr.de>; Thu,  4 Mar 2021 01:01:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234260AbhCCSVB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Mar 2021 13:21:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37128 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343674AbhCCDcw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Mar 2021 22:32:52 -0500
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com [IPv6:2607:f8b0:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51FA1C061797
        for <devicetree@vger.kernel.org>; Tue,  2 Mar 2021 19:31:23 -0800 (PST)
Received: by mail-pg1-x532.google.com with SMTP id a23so5500168pga.8
        for <devicetree@vger.kernel.org>; Tue, 02 Mar 2021 19:31:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=cn2nXibIzD0MkhidCs0pgueHS+0vk99rUID4aeq6w6Y=;
        b=CLmmXpcEX5+Anb8wZZGcKGG/CeFLnu6I8e+fm741ocARS+TjchKVo2iDrMHSD1Nbt2
         9fhwi1sVXOtwNX4OgQeeiwzsT+mEntWK6ZKWmPRKHtTazpXdvJiYa762vlCjezwteNxe
         teSIaHPPAHFhMIUUqdFOE7CRcKi0cfyciqA0uaQyNF2vWt8bHKmarKsqFp+c/VBGhhwM
         rbMG8ZK4MzApHOALD+oW588JmebnGEOvRE+InxBfw9mKdlVetpNymOIQGBDNmdKMBrz2
         wBx+/7t+TKX3FnXqfW9/eEwKe53bT24W1eNohwIqXkv96aexuZLoPNF0pbrZcmaZM5sb
         H5dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=cn2nXibIzD0MkhidCs0pgueHS+0vk99rUID4aeq6w6Y=;
        b=Q6FpWwGyTAKzXJdCegNMynDqt4smEM7au11UT6KmqEIxvECdRFMoEB++di9McweHjQ
         y5mQxJKqhqjszB9SNjfp0AsBHlwRr+76TFpuTHPz98dSXV8LpCVTX759Xu26r82ezr3r
         T1BGxBOubl11vDTUHlaIQOAs/zr6Z206v1xR17hCSPyXqh8DJkv4SEvU6Yz/jMjXWCK/
         9Lz9H84WqnkzTnjY5L62N8i2PJaA9KsAmHWwcoOva26AUf339aqP6rHSbQPRUwd48wxi
         TnyWNwJnhPa5JLsA0DaFsFWsexnsetsGD5dcWXGFDub04xL0QSlm1yzl2BFvyIAOBsEo
         Qh3g==
X-Gm-Message-State: AOAM531Gaip59NlndTbqJXQ1gR1F63kSF5LyEhTE67omMIgOHOOf7D9U
        4v4XKYepWABnMnMZwkbAcD3mMQ==
X-Google-Smtp-Source: ABdhPJxUuYkhu4i6aduARS71TgXJShBmy+zKxt2isfiduxdLMnn1un8v+HreOtOXqf7YGR/bczwMLQ==
X-Received: by 2002:a05:6a00:a95:b029:1ee:471f:e323 with SMTP id b21-20020a056a000a95b02901ee471fe323mr19528594pfl.69.1614742282903;
        Tue, 02 Mar 2021 19:31:22 -0800 (PST)
Received: from localhost.localdomain (80.251.214.228.16clouds.com. [80.251.214.228])
        by smtp.gmail.com with ESMTPSA id c4sm16057511pfo.2.2021.03.02.19.31.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Mar 2021 19:31:22 -0800 (PST)
From:   Shawn Guo <shawn.guo@linaro.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     devicetree@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, Shawn Guo <shawn.guo@linaro.org>,
        Vinod Koul <vkoul@kernel.org>
Subject: [PATCH 2/4] arm64: dts: qcom: sm8150: fix number of pins in 'gpio-ranges'
Date:   Wed,  3 Mar 2021 11:31:04 +0800
Message-Id: <20210303033106.549-3-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210303033106.549-1-shawn.guo@linaro.org>
References: <20210303033106.549-1-shawn.guo@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The last cell of 'gpio-ranges' should be number of GPIO pins, and in
case of qcom platform it should match msm_pinctrl_soc_data.ngpio rather
than msm_pinctrl_soc_data.ngpio - 1.

This fixes the problem that when the last GPIO pin in the range is
configured with the following call sequence, it always fails with
-EPROBE_DEFER.

    pinctrl_gpio_set_config()
        pinctrl_get_device_gpio_range()
            pinctrl_match_gpio_range()

Fixes: e13c6d144fa0 ("arm64: dts: qcom: sm8150: Add base dts file")
Cc: Vinod Koul <vkoul@kernel.org>
Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8150.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index e5bb17bc2f46..778613d3410b 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -914,7 +914,7 @@
 			      <0x0 0x03D00000 0x0 0x300000>;
 			reg-names = "west", "east", "north", "south";
 			interrupts = <GIC_SPI 208 IRQ_TYPE_LEVEL_HIGH>;
-			gpio-ranges = <&tlmm 0 0 175>;
+			gpio-ranges = <&tlmm 0 0 176>;
 			gpio-controller;
 			#gpio-cells = <2>;
 			interrupt-controller;
-- 
2.17.1

