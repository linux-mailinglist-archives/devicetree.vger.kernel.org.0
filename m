Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 49AFA32C09F
	for <lists+devicetree@lfdr.de>; Thu,  4 Mar 2021 01:01:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234007AbhCCSUu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Mar 2021 13:20:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37088 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343690AbhCCDcl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Mar 2021 22:32:41 -0500
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com [IPv6:2607:f8b0:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 14263C061793
        for <devicetree@vger.kernel.org>; Tue,  2 Mar 2021 19:31:21 -0800 (PST)
Received: by mail-pf1-x436.google.com with SMTP id 18so429173pfo.6
        for <devicetree@vger.kernel.org>; Tue, 02 Mar 2021 19:31:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=CX7nnUJDVRP42eJky/cZ0aCMDizljES0o4MdBwQ4CMk=;
        b=gDz1yEByWLsYs+FakH5QYXl3lFXx/nNsv8zzvRVrSC5DKraer8E6LQHZ1nrxtHaZMf
         aNBFHCc59ulsidmWvF5vMSrkQXVc30OToKjjOQWgKDvxX85yGexEZcJVgQvZVl5A75zC
         UCn4dsjSYAH24tiiY+8jBgfda5qf6MofxPw5GI3+mA7sjkBfErqlyoE/hFTivbixch/e
         3oCIcsGWNz23PTDwQbuEsMZ4SJG1ttid+5d2Gg0tzQTHKdUF9U6gQQll+6da81fBNm5Y
         TW0lSuYiB1yq240WosvVhzmHY9cNKHHrUGJ+z4JS3AjOftXcQYOeOLo7ylmaA5rpNU2m
         ek1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=CX7nnUJDVRP42eJky/cZ0aCMDizljES0o4MdBwQ4CMk=;
        b=DYiZDuSr2a5NvNUDzqOVZIRl5VhlF6gkHXnGKRTAr3jaJa6/565XYM62I50MS8hCby
         nz2NnOT2iMKCJQu6/WzsVqlK15gafLgO7okTkHws9QqZkPSaUMO3mVtjKhkeu41SZcR4
         J6IM+tGt9mx7ZX/FCYfbV+bP7mhNIMP3Qe8cMx56xH9dEGdXAq4H+vP8o62zcLbji4BM
         AW8xrDAAZ2OmZAqIkNsPBfJB3XHDwswfAfjgZEcanR5283PGmGCiENCbtu9vpsa9BDaM
         qtBiYAnCm6b3GV8CUgrtzOV4mrGdjKIDAwG6qbGNh0QrvP4cFHXh7QFNi0PH9OfRwnhQ
         2gGw==
X-Gm-Message-State: AOAM5304gBKp799GNNvceTn1TSg8wOCLFMcmUWdtW9DtP3E/7+zAUMPo
        FGRm0VOLOs8xXk9hyKrVh80CtA==
X-Google-Smtp-Source: ABdhPJz54Js3NgB/rnRs/fbaJHzlKjghBfEkgYhhhwSk+5Pv1NyxIsdzCP8iJS8j/buOEXtGRU0shg==
X-Received: by 2002:a62:6005:0:b029:1d9:ce00:26cf with SMTP id u5-20020a6260050000b02901d9ce0026cfmr1309226pfb.7.1614742280695;
        Tue, 02 Mar 2021 19:31:20 -0800 (PST)
Received: from localhost.localdomain (80.251.214.228.16clouds.com. [80.251.214.228])
        by smtp.gmail.com with ESMTPSA id c4sm16057511pfo.2.2021.03.02.19.31.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Mar 2021 19:31:20 -0800 (PST)
From:   Shawn Guo <shawn.guo@linaro.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     devicetree@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, Shawn Guo <shawn.guo@linaro.org>,
        Evan Green <evgreen@chromium.org>
Subject: [PATCH 1/4] arm64: dts: qcom: sdm845: fix number of pins in 'gpio-ranges'
Date:   Wed,  3 Mar 2021 11:31:03 +0800
Message-Id: <20210303033106.549-2-shawn.guo@linaro.org>
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

Fixes: bc2c806293c6 ("arm64: dts: qcom: sdm845: Add gpio-ranges to TLMM node")
Cc: Evan Green <evgreen@chromium.org>
Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index 454f794af547..6a2ed02d383d 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -2382,7 +2382,7 @@
 			#gpio-cells = <2>;
 			interrupt-controller;
 			#interrupt-cells = <2>;
-			gpio-ranges = <&tlmm 0 0 150>;
+			gpio-ranges = <&tlmm 0 0 151>;
 			wakeup-parent = <&pdc_intc>;
 
 			cci0_default: cci0-default {
-- 
2.17.1

