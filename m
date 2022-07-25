Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 63FB9580665
	for <lists+devicetree@lfdr.de>; Mon, 25 Jul 2022 23:22:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237250AbiGYVW0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jul 2022 17:22:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43070 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237096AbiGYVWU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jul 2022 17:22:20 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BA2B240B6
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 14:22:13 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id u14-20020a05600c00ce00b003a323062569so7090592wmm.4
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 14:22:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=1Xv9gQUnkJbk4F0OgYMl9FyP7zMBpFHCpf4m5lSD++Y=;
        b=ivbkCy0wsckrV/txZ+aJp6OOzD/sPW9WjPS6qiSWEb2SIXh8+j6qesfb3L7a1wzyft
         r2WHGfpvGpoVRgfL5Hvf9sddCVsXcWQO0/EBJJFuzw4EveXx9oH3DAcyv5apuOfJWMEM
         io7F870QmdYxTa8KEvnPFasNVVpKM0KSqFxjqVpAPIXkLs3mXGBPq8Qdt9+9EMb/Ug/V
         6U7mMQ1lJOmX8R7LWAeffugpwdKpC1Fj/d12wrtwclxjxQtSntZPXYELTH1pREAeDxXp
         qElCj0UJbtTQLtjLaIhd7GJ1v0ulKvdUSD09Wok2TeFaNXU9AM+ap7Sbp96QjeFoBfoO
         E1gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=1Xv9gQUnkJbk4F0OgYMl9FyP7zMBpFHCpf4m5lSD++Y=;
        b=kfeBMG4Yi3HW+oPglcqF+es9KWBp1U2U8O4YLVjEn223Oj2Pzl4lLP4GmzviM7KTrf
         HDS00AO+YQxBhwmx9fYjEYJMaklvNE5YDkK7PweZMC0+tHC6HlwgyQXlJsdHrqi3fZiP
         BCNtyHs+0qa+I7+NTBWOwxPHLy/8+I9WTFxDXBfS+kHd+VYJ6vfUHIh94eB9HCmy4UBn
         0VMe0OlEjcaxOOfOBplNfooorWqFwdWOXFTUnduG3Aqu8F4Bt2TlFoUQON5t1lBUL2kI
         upOWWa7EkEyK1eGbGh6HEeeOQc+l4UiAB8mXfdliXjUaGHsguEugsQe/6LW7XtenuMQ3
         mwZQ==
X-Gm-Message-State: AJIora957xOogfrpnj0QxxqixIKnHb10q1cYN0tGmm03SxeqlA0qav1y
        8SC8PNxl0u6ORERxElfAdncnDg==
X-Google-Smtp-Source: AGRyM1uLuV02EtjkgpPz+Fd0i4C4ji98axhqBws+TSbQOnuMNuWRKknmpRfWjZ1y7wRdU+uE9fCsLQ==
X-Received: by 2002:a05:600c:284a:b0:3a2:ffb7:b56f with SMTP id r10-20020a05600c284a00b003a2ffb7b56fmr22459114wmb.134.1658784131994;
        Mon, 25 Jul 2022 14:22:11 -0700 (PDT)
Received: from localhost.localdomain (cpc152649-stkp13-2-0-cust121.10-2.cable.virginm.net. [86.15.83.122])
        by smtp.gmail.com with ESMTPSA id i13-20020a05600011cd00b0021d6924b777sm12656348wrx.115.2022.07.25.14.22.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Jul 2022 14:22:11 -0700 (PDT)
From:   Ben Dooks <ben.dooks@sifive.com>
To:     linux-pwm@vger.kernel.org
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Lee Jones <lee.jones@linaro.org>,
        u.kleine-koenig@pengutronix.de,
        Thierry Reding <thierry.reding@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Greentime Hu <greentime.hu@sifive.com>,
        Ben Dooks <ben.dooks@sifive.com>
Subject: [[PATCH v2] 9/9] pwm: dwc: add PWM bit unset in get_state call
Date:   Mon, 25 Jul 2022 22:21:40 +0100
Message-Id: <20220725212140.741644-9-ben.dooks@sifive.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220725212140.741644-1-ben.dooks@sifive.com>
References: <20220725212140.741644-1-ben.dooks@sifive.com>
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

If we are not in PWM mode, then the output is technically a 50%
output based on a single timer instead of the high-low based on
the two counters. Add a check for the PWM mode in dwc_pwm_get_state()
and if DWC_TIM_CTRL_PWM is not set, then return a 50% cycle.

This may only be an issue on initialisation, as the rest of the
code currently assumes we're always going to have the extended
PWM mode using two counters.

Signed-off-by: Ben Dooks <ben.dooks@sifive.com>
---
 drivers/pwm/pwm-dwc.c | 34 +++++++++++++++++++++++-----------
 1 file changed, 23 insertions(+), 11 deletions(-)

diff --git a/drivers/pwm/pwm-dwc.c b/drivers/pwm/pwm-dwc.c
index da325133d297..f3723c4d1e59 100644
--- a/drivers/pwm/pwm-dwc.c
+++ b/drivers/pwm/pwm-dwc.c
@@ -171,23 +171,35 @@ static void dwc_pwm_get_state(struct pwm_chip *chip, struct pwm_device *pwm,
 {
 	struct dwc_pwm *dwc = to_dwc_pwm(chip);
 	u64 duty, period;
+	u32 ctrl, ld, ld2;
 
 	pm_runtime_get_sync(chip->dev);
 
-	state->enabled = !!(dwc_pwm_readl(dwc,
-				DWC_TIM_CTRL(pwm->hwpwm)) & DWC_TIM_CTRL_EN);
+	ctrl = dwc_pwm_readl(dwc, DWC_TIM_CTRL(pwm->hwpwm));
+	ld = dwc_pwm_readl(dwc, DWC_TIM_LD_CNT(pwm->hwpwm));
+	ld2 = dwc_pwm_readl(dwc, DWC_TIM_LD_CNT2(pwm->hwpwm));
 
-	duty = dwc_pwm_readl(dwc, DWC_TIM_LD_CNT(pwm->hwpwm));
-	duty += 1;
-	duty *= dwc->clk_ns;
-	state->duty_cycle = duty;
+	state->enabled = !!(ctrl & DWC_TIM_CTRL_EN);
 
-	period = dwc_pwm_readl(dwc, DWC_TIM_LD_CNT2(pwm->hwpwm));
-	period += 1;
-	period *= dwc->clk_ns;
-	period += duty;
-	state->period = period;
+	/* If we're not in PWM, technically the output is a 50-50
+	 * based on the timer load-count only.
+	 */
+	if (ctrl & DWC_TIM_CTRL_PWM) {
+		duty = ld;
+		duty += 1;
+		duty *= dwc->clk_ns;
+
+		period = ld2;
+		period += 1;
+		period *= dwc->clk_ns;
+		period += duty;
+	} else {
+		duty = (ld + 1) * dwc->clk_ns;
+		period = duty * 2;
+	}
 
+	state->period = period;
+	state->duty_cycle = duty;
 	state->polarity = PWM_POLARITY_INVERSED;
 
 	pm_runtime_put_sync(chip->dev);
-- 
2.35.1

